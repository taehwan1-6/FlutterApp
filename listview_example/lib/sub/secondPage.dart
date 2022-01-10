import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _SecondApp();
  List<Animal>? list;
  SecondApp({Key? key, @required this.list}) : super(key: key);

}

class _SecondApp extends State<SecondApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ // 위젯 담기

            ],
          ),
        ),
      ),
    );
  }
}