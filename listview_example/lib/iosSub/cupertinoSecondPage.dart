// ch06-2 쿠퍼티오 위젯으로 동물 추가 화면 만들기

import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('동물 추가'),
      ),
      child: null,
    );
  }
}