// 버튼을 눌러 텍스트를 바꿔 보

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<StatefulWidget> {
  var switchValue = false;
  String test = "hello";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('$test'),
            onPressed: () {
              if (test == 'hello') {
                setState(() {
                  test = 'flutter';
                });
              } else {
                setState(() {
                  test = 'hello';
                });
              }
            },
          ),
        ),
      ),

    );
  }
}