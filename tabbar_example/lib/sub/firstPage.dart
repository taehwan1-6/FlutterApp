// ch05-1 탭바로 화면 이동하기

import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('첫번째 페이지'),
        ),
      ),
    );
  }
}