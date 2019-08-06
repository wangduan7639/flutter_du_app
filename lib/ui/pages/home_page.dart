import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Home',
          style: TextStyle(
            color: fontColor_333333,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Text("Home"),
      ),
    );
    ;
  }
}
