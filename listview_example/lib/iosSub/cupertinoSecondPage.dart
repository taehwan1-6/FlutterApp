// ch06-2 쿠퍼티오 위젯으로 동물 추가 화면 만들기

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animalItem.dart';

class CupertinoSecondPage extends StatefulWidget {
  final List<Animal>? animalList;
  const CupertinoSecondPage({Key? key, required this.animalList}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CupertinoSecondPage();
  }
}

class _CupertinoSecondPage extends State<CupertinoSecondPage> {
  TextEditingController? _textController;
  int _kindChoice = 0;
  bool _flyExist = false;
  String? _imagePath;
  Map<int, Widget> segmentWidget = {
    0: SizedBox(
      child: Text('양서류', textAlign: TextAlign.center,),
      width: 80,
    ),
    1: SizedBox(
      child: Text('포유류', textAlign: TextAlign.center,),
      width: 80,
    ),
    2: SizedBox(
      child: Text('파충류', textAlign: TextAlign.center,),
      width: 80,
    ),
  };

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('동물 추가'),
      ),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10),
                      child: CupertinoTextField(
                        controller: _textController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                      ),)
            ],
          ),
        ),
      ),
    );
  }
}