import 'package:flutter/material.dart';
import 'package:todoey_flutter/modules/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'comprar pan'),
    Task(name: 'comprar huevos'),
    Task(name: 'comprar leche'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addData(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleDone() {
    notifyListeners();
  }
}
