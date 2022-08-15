// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_project10_state_management/widgets/tasks_tiles.dart';
import 'package:provider/provider.dart';

import '../modules/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxCallback: (bool? checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
          );
        },
        itemCount: taskData.taskCout,
      );
    });
  }
}
