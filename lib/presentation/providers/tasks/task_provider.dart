

import 'package:flutter/material.dart';
import 'package:fully_unified_app/infraestructure/models/models.dart';

class TaskProvider extends ChangeNotifier {

  final List<Task> _tasks = [
    // Task(title: 'Learn', isCompleted: false),
    // Task(title: 'Sleep', isCompleted: false),
    // Task(title: 'Drink watter', isCompleted: false),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

  void deleteAllTasks(){
    tasks.clear();
    notifyListeners();
  }
}