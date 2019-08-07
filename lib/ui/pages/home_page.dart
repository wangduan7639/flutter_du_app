import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_du_app/res/colors/color_constant.dart';

import 'home/attention_page.dart';
import 'home/newest_page.dart';
import 'home/recommend_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.currentIndex = 0;
    this.tabController = new TabController(length: 3, vsync: this);
    this.tabController.index = this.currentIndex;
  }

  /*
   * 获取tab
   */
  Text _getTabItem(index, title) {
    if (this.currentIndex == index) {
      return new Text(
        title,
        style: new TextStyle(color: fontColor_333333),
      );
    } else {
      return new Text(
        title,
        style: new TextStyle(color: fontColor_999999),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new TabBar(
          indicatorPadding: EdgeInsets.only(left: 50, right: 50),
          tabs: <Widget>[
            new Tab(
              text: '关注',
            ),
            new Tab(
              text: '推荐',
            ),
            new Tab(
              text: '最新',
            ),
          ],
          onTap: (index) {
            this.currentIndex = index;
          },
          labelColor: fontColor_333333,
          unselectedLabelColor: fontColor_999999,
          labelStyle: TextStyle(fontSize: 16.0),
          unselectedLabelStyle: TextStyle(fontSize: 14.0),
          controller: this.tabController,
          dragStartBehavior: DragStartBehavior.down,
          indicatorColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Image.asset(
            'images/home/icon_search.png',
            width: 25,
            height: 25,
          ),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
              icon: Image.asset(
                'images/home/icon_camera.png',
                width: 25,
                height: 25,
              ),
              onPressed: () {}),
        ],
      ),
      body: new TabBarView(
        children: <Widget>[
          new Center(
            child: AttentionPage(),
          ),
          new Center(
            child: RecommendPage(),
          ),
          new Center(
            child: NewestPage(),
          ),
        ],
        controller: this.tabController,
        dragStartBehavior: DragStartBehavior.down,
      ),
    );
    ;
  }
}
