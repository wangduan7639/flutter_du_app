import 'package:flutter/material.dart';
import 'package:flutter_du_app/network/http_request.dart';
import 'package:flutter_du_app/network/api_constrants.dart';

class RecommendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RecommendPageState();
  }
}

class _RecommendPageState extends State<RecommendPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getRecommendData();
  }

  /*
  * 获取推荐数据
  * */
  void _getRecommendData() {
    HttpManager()
        .get(HOME_RECOMMEND,
            params: {"lastId": ""}, handler: (int code, String msg) {})
        .then((HttpResponse httpResponse) {
          print(httpResponse);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.blue,
      child: Center(),
    );
  }
}
