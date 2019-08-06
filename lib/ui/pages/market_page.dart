import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';

class MarketPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MarketPageState();
  }
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Market',
          style: TextStyle(
            color: fontColor_333333,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Text("Market"),
      ),
    );
    ;
  }
}
