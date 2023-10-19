import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box

  final _myBox = Hive.box('mybox');

//run this if this is the first time ever u opening the app
  void createInitialData() {
    toDoList = [
      ['Call Chikku', false],
      ['Do coding', false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database

  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
