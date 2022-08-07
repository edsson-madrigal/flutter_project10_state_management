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
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
        );
      },
      itemCount: tasks.length,
    );
  }
}
