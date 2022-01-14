import 'package:flutter/material.dart';
import 'package:todo_list/secondDetail.dart';
import 'package:todo_list/subDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Example',
      initialRoute: '/',
      routes: {
        '/': (context) => SubDetail(),
        '/second': (context) => SecondDetail(),
      },
    );
  }
}