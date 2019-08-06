import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';
import 'home_page.dart';
import 'market_page.dart';
import 'me_page.dart';
import 'service_page.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RootPageState();
  }
}

class _RootPageState extends State<RootPage> {
  int index = 0; //默认选中的tab
  List<Widget> views; //tabbar所有views
  var tabImages;
  var appBarItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.views = List();
    this.views
      ..add(HomePage())
      ..add(MarketPage())
      ..add(ServicePage())
      ..add(MinePage());
    this.appBarItems = [
      {
        "title": "毒",
        "nomalIcon": "images/bottom_tabbar/tab_home_normal.png",
        "selectIcon": "images/bottom_tabbar/tab_home_select.png"
      },
      {
        "title": "购买",
        "nomalIcon": "images/bottom_tabbar/tab_market_normal.png",
        "selectIcon": "images/bottom_tabbar/tab_market_select.png"
      },
      {
        "title": "服务",
        "nomalIcon": "images/bottom_tabbar/tab_service_normal.png",
        "selectIcon": "images/bottom_tabbar/tab_service_select.png"
      },
      {
        "title": "我",
        "nomalIcon": "images/bottom_tabbar/tab_me_normal.png",
        "selectIcon": "images/bottom_tabbar/tab_me_select.png"
      }
    ];

    print('xxxxxx');
    print(this.appBarItems);
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text _getAppBarTitle(int index) {
    if (this.index == index) {
      return Text(
        this.appBarItems[index]["title"],
        style: TextStyle(fontSize: 14.0, color: fontColor_333333),
      );
    } else {
      return Text(
        this.appBarItems[index]["title"],
        style: TextStyle(fontSize: 14.0, color: fontColor_666666),
      );
    }
  }

  Image _getAppBarIcon(int index) {
    if (this.index == index) {
      return Image.asset(
        this.appBarItems[index]["selectIcon"],
        width: 24.0,
        height: 24.0,
      );
    } else {
      return Image.asset(
        this.appBarItems[index]["nomalIcon"],
        width: 24.0,
        height: 24.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: this.views[this.index],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _getAppBarIcon(0), title: _getAppBarTitle(0)),
          BottomNavigationBarItem(
              icon: _getAppBarIcon(1), title: _getAppBarTitle(1)),
          BottomNavigationBarItem(
              icon: _getAppBarIcon(2), title: _getAppBarTitle(2)),
          BottomNavigationBarItem(
              icon: _getAppBarIcon(3), title: _getAppBarTitle(3)),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: this.index,
        iconSize: 24.0,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
