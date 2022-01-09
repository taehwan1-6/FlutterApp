// ch03-2 생명주기 순서 출력하기
// 1. createState()
// 2. mount == true
// 3. initState()
// 4. didChangeDependencies()
// 5. build()
// 6. didUpdateWidget()
// 7. setState()
// 8. deactivate()
// 9. dispose()
// 10. mount == false

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('createState');
    return _MyApp();
  }
}

class _MyApp extends State<StatefulWidget> {
  var switchValue = false;
  String test = "hello";
  Color _color = Colors.blue;

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
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_color)),
            onPressed: () {
              if (_color == Colors.blue) {
                setState(() {
                  test = 'flutter';
                  _color = Colors.amber;
                });
              } else {
                setState(() {
                  test = 'flutter';
                  _color = Colors.blue;
                });
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

}