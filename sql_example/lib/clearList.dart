import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'todo.dart';

class ClearListApp extends StatefulWidget {
  Future<Database> database;
  ClearListApp(this.database);

  @override
  State<StatefulWidget> createState() => _ClearListApp();
}

class _ClearListApp extends State<ClearListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('완료한 일'),
      ),
    );
  }

  Future<List<Todo>> getClearList() async {
    final Database database = await widget.database;
    List<Map<String, dynamic>> maps = await database
      .rawQuery('select title, content, id from todos where active=1');

    return List.generate(maps.length, (i) {
      return Todo(
        title: maps[i]['title'].toString(),
        content: maps[i]['content'].toString(),
        id: maps[i]['id'],);
    });
  }

}