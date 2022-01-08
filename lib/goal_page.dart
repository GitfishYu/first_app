import 'package:flutter/material.dart';

import './goals.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GoalPageState();
  }
}

class _GoalPageState extends State<GoalPage> {
  final List<String> _goals = [];

  @override
  TextEditingController customController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Goal'),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: MaterialButton(
          color: const Color(0xFF355C7D),
          textColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          onPressed: () {
            //Navigator.pop(context);
            Navigator.of(context).pop(customController.text.toString());
            //Goals(_goals);
          },
          child: const Text('Set Goal'),
        ),
      ),
    );
  }
}
