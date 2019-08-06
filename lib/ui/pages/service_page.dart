import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';

class ServicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ServicePageState();
  }
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Service',
          style: TextStyle(
            color: fontColor_333333,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Text("Service"),
      ),
    );
    ;
  }
}
