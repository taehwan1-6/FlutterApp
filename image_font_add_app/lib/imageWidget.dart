// 04. 플러터 위젯 사용법
// 04-2. 이미지와 폰트 추가하기
// 04_2_1. 이미지 표시하기

import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageWidgetApp();
  }
}

class _ImageWidgetApp extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/lion.jpeg', width: 200, height: 100, fit: BoxFit.fill),
            ],
          ),
        ),
      ),
    );
  }
}