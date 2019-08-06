import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Mine',
          style: TextStyle(
            color: fontColor_333333,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Text("Mine"),
      ),
    );
    ;
  }
}
