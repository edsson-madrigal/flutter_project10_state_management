// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'Data from Parent';
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(child: Text(data),),
        ),
        body: Level1(data),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  final String data;
  const Level1(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(data),
    );
  }
}

class Level2 extends StatelessWidget {
  final String data;
  const Level2(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(data),
    );
  }
}

class Level3 extends StatelessWidget {
  final String data;

  const Level3(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_project10_state_management/screens/tasks_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TasksScreen(),
//     );
//   }
// }
