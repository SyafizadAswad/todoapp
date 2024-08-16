import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference box
  final _myBox = Hive.box('myBox');

  //run if 1st time opening app
  void createInitialData() {
    toDoList = [
      ["Make coffee", false],
      ["Sleep", false],
    ];
  }

  //load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
