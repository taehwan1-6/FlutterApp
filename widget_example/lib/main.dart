// ch04 플러터 위젯 사용법
// ch04-3 사용자와 상호작용하는 앱 만들기
// ch04-3-2 뺄셈, 곱셈, 나눗셈 기능 추가하

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: WidgetApp());
  }
}

class WidgetApp extends StatefulWidget {
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {
  String sum = '';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  List _buttonList = ['더하기', '빼기', '곱하기', '나누기'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = new List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15),
                  child: Text(
                  '결과 : $sum',
                  style: TextStyle(fontSize: 20),)),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(keyboardType: TextInputType.number, controller: value1)),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(keyboardType: TextInputType.number, controller: value2)),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: ElevatedButton(child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      Text('더하기')
                    ],
                  ),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  onPressed: () {
                    setState(() {
                      int result = int.parse(value1.value.text) + int.parse(value2.value.text);
                      sum = '$result';
                    });
                  }),),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: DropdownButton(items: null, onChanged: null),)
            ],
          ),
        ),
      ),
    );
  }
}
