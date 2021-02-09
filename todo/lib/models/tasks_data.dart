import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'enter your birthday'),
    Task(name: 'enter your email'),
    Task(name: 'give you a cake'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String taskName) {
    final task = Task(name: taskName);
    _task.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
