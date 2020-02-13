package com.example.baterrylevel;

import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;

import io.flutter.Log;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {

    private static final String TAG = MainActivity.class.getSimpleName();

    private static final String CHANNEL = "samples.flutter.io/battery";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        //创建MethodChannel并设置一个MethodCallHandler。这里要确保使用与在Flutter客户端使用的通道名称相同
        new MethodChannel(
                getFlutterView(),
                CHANNEL
        ).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                String methodName = methodCall.method;
                Log.i(TAG,"MethodCall name = "+methodName);
                if (methodCall.method.equals("getBaterryLevel")) {
                    int batteryLevel = getBatteryLevel();
                    if (batteryLevel != -1) {
                        result.success(batteryLevel);
                    } else {
                        result.error("UNAVILABLE", "Baterry level not available", null);
                    }
                } else {
                    //未实现的调用
                    result.notImplemented();
                }
            }
        });
    }


    /**
     * 获取电量
     *
     * @return
     */
    private int getBatteryLevel() {
        int batteryLevel = -1;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            BatteryManager batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
            batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
        } else {
            Intent intent = new ContextWrapper(getApplicationContext()).
                    registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
            batteryLevel = (intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100) /
                    intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
        }

        return batteryLevel;
    }
}
