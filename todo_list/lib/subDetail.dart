import 'package:flutter/material.dart';

class SubDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SubDetail();
}

class _SubDetail extends State<SubDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Detail Example'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/second'); // 스택 메모리에 있는 자료를 교체하는 코드
            },
            child: Text('두 번째 페이지로 이동하기'),
          ),
        ),
      ),
    );
  }
}