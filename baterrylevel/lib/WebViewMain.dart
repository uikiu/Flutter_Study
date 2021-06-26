import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:oktoast/oktoast.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

//    return null;

    return OKToast(
        child: MaterialApp(
          title: 'flutter webView js',
          theme: ThemeData(
            primarySwatch: Colors.blue
          ),
          home: WebViewPage(),
        ),
    );
  }
}


class WebViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebViewPageState();
  }
}

class _WebViewPageState extends State<WebViewPage> {

  //flutter收到js消息
  JavascriptChannel _alertJavascriptChannel(BuildContext context){
    return JavascriptChannel(
        name: 'Toast',
        onMessageReceived: (JavascriptMessage message){
          showToast(message.message);
        }
    );
  }
  //
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter webView example'),
      ),
      body: Builder(
          builder:(BuildContext context) {
              return WebView(
                initialUrl: 'http://bin.amazeui.org/ruviyabibu',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController){
                  _controller.complete(webViewController);
                },
                javascriptChannels: <JavascriptChannel>[
                  _alertJavascriptChannel(context),
                ].toSet(),
                navigationDelegate: (NavigationRequest navigationRequest){
                  if(navigationRequest.url.startsWith('js://webview')){
                    showToast('JS调用了Flutter By navigationDelegate');
                    print('blocking navigation to $navigationRequest');
                    return NavigationDecision.prevent;
                  } else {
                    print('allowing navigation to $navigationRequest');
                    return NavigationDecision.navigate;
                  }
                },
                onPageFinished: (String url){
                  print('Page finished load:$url');
                },
              );
          },
      ),
      floatingActionButton: jsButton(),
    );
  }

  /**
   *
   */
  Widget jsButton(){
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder: (BuildContext context, AsyncSnapshot<WebViewController> controller){
       if(controller.hasData) {
         return FloatingActionButton(
           onPressed: () async {
             _controller.future.then((controller){
               controller
                   .evaluateJavascript('callJS("visible")')
                   .then((result){});
             });
           },
           child: Text('call JS'),
         );
       }
       return Container();
      },
    );
  }
}


