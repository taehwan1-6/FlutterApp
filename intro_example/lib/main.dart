import 'package:flutter/material.dart';
import 'largeFileMain.dart';
import 'introPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로고바꾸기'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LargeFileMain()));
            },
            child: Text(
              '로고 바꾸기',
              style: TextStyle(color: Colors.white),
            )),
        ],
      ),
      body: Container(),
    );
  }
}
