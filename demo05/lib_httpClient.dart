

/**
 * 
 * 异步函数
 *  1. 异步函数名后面加入async关键字
 *  2. 耗时函数使用关键字await修饰
 *  3. await关键字只能出现在async函数里面
 * 
 *  async:
 *      让方法变为异步方法
 *  await:
 *      等待异步方法执行完毕
 */

//api接口： http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async{
  //1、创建HttpClient对象
  var httpClient = new HttpClient();  
  //2、创建Uri对象
  var uri = new Uri.http('news-at.zhihu.com','/api/3/stories/latest');
  //3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //4、关闭请求，等待响应
  var response = await request.close();
  //5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}