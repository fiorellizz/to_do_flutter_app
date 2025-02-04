import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Make new app', false],
      ['Buy eggs', false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
