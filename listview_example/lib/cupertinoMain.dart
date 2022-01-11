// ch06. ios 스타일로 플러터 앱 만들기

import 'package:flutter/cupertino.dart';

class CupertinoMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CupertinoMain();
  }
}

class _CupertinoMain extends State<CupertinoMain> {
  CupertinoTabBar? tabBar;

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem> [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: tabBar!,
        tabBuilder: (context, value) {
          if (value == 0) {
            return Container(
              child: Center(
                child: Text('cupertino tab1'),
              ),
            );
          } else {
            return Container(
              child: Center(
                child: Text('cupertino tab2'),
              ),
            );
          }
        }),
    );
  }
}

