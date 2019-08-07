import 'package:http/http.dart' as http;
import 'api_constrants.dart';
import 'dart:convert';

class HttpManager {
  // 静态私有成员，没有初始化
  static HttpManager _instance;

  //私有构造函数，可以初始化一些变量
  HttpManager.init() {}

  // 静态、同步、私有访问点
  static HttpManager _sharedInstance() {
    if (_instance == null) {
      _instance = HttpManager.init();
    }
    return _instance;
  }

  // Global单例公开访问点
  factory HttpManager() {
    return _sharedInstance();
  }

  Future<HttpResponse> get(String url,
      {Map<String, String> params, Function handler}) async {
    HttpResponse httpResponse = HttpResponse();
    var requestUrl = url;
    if (params.length > 0) {
      requestUrl += '?';
      params.forEach((key, value) {
        requestUrl += key + "=" + value + "&";
      });
    }
    await http
        .get(requestUrl, headers: requestHeaders)
        .then((http.Response response) {
      print('sdflksdjfksdlfjsdfsdf');
      print(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> map = json.decode(response.body);
        httpResponse.status = map['status'];
        httpResponse.timestamp = map['timestamp'];
        httpResponse.log = map['log'];
        httpResponse.msg = map['msg'];
        if (map['status'] == 200) {
          //业务成功
          httpResponse.data = map['data'];
        } else {
          //业务报错
          if (handler != null) {
            handler(httpResponse.status, httpResponse.msg);
          }
        }
      } else {
        httpResponse.msg = "网络异常";
        httpResponse.status = -10000;
      }
    }).catchError((error) {
      print('[uri=$requestUrl]exception e=${error.toString()}');
      httpResponse.msg = "请求异常";
      httpResponse.status = -10001;
    });
    return httpResponse;
  }
}

class HttpResponse {
  dynamic data;
  dynamic log;
  String msg;
  int status;
  double timestamp;
}
