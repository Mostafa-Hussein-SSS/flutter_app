import 'package:flutter/material.dart';

import '../models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'UI Development', dueDate: DateTime.now(), priority: 'High'),
    Task(
        title: 'Dashboard Design',
        dueDate: DateTime.now().add(Duration(days: 1)),
        priority: 'Medium'),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void markTaskAsComplete(int index) {
    _tasks[index].isCompleted = true;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
