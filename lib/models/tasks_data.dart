import 'package:flutter/material.dart';
import 'tasks.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [];

  int get taskCount{
    return tasks.length;
  }
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void checkTask(Task task){
    task.toggleDone();
    notifyListeners();
  }


  void removeTask(Task task){
      tasks.remove(task);
      notifyListeners();
  }
}