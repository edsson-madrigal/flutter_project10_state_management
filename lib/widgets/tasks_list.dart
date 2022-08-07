// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_project10_state_management/modules/task.dart';
import 'package:flutter_project10_state_management/widgets/tasks_tiles.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
        TasksTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TasksTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}
