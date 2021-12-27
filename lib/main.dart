import 'package:flutter/material.dart';

import './goal_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: GoalManager('Tester'),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.add),
        //   backgroundColor: const Color(0xFF355C7D),
        //   onPressed: () {
        //     globals.click = true;
        //     //callManager();
        //     //GoalManager('Tester');
        //     // Goals(['Tester']);
        //     // setState(() {
        //     //   _goals.add('New Goal');
        //     // });
        //   },
        //),
      ),
    );
  }
}
