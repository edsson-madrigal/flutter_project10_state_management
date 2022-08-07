// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_project10_state_management/widgets/tasks_tiles.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(),
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
