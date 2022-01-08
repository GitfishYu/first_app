import 'package:flutter/material.dart';

import './goals.dart';
import './goal_page.dart';

class GoalManager extends StatefulWidget {
  final String startingGoal;

  const GoalManager(this.startingGoal, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _GoalManagerState();
  }
}

class _GoalManagerState extends State<GoalManager> {
  final List<String> _goals = [];

  @override
  void initState() {
    print("Manger being initalized");
    _goals.add(widget.startingGoal);
    super.initState();
  }

  // Future<String?> createAlertDialog(BuildContext context) {
  //   TextEditingController customController = TextEditingController();
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         insetPadding: const EdgeInsets.fromLTRB(30.0, 210.0, 30.0, 210.0),
  //         //title: const Text('Goal:'),
  //         shape: const RoundedRectangleBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(10.0))),
  //         content: Column(
  //           children: [
  //             const Text('Goal:'),
  //             TextField(
  //               controller: customController,
  //               decoration: const InputDecoration(hintText: "e.g. Buy a Car"),
  //             ),
  //             const Text('Start Date:'),
  //             TextField(
  //               controller: customController,
  //             ),
  //             const Text('End Date:'),
  //             TextField(
  //               controller: customController,
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           MaterialButton(
  //             elevation: 5.0,
  //             child: const Text('Create'),
  //             onPressed: () {
  //               Navigator.of(context).pop(customController.text.toString());
  //             },
  //           )
  //         ],
  //       );
  //     },
  //   );
  //}
  // void addGoal() {
  //   setState(() {
  //     _goals.add('New Goal');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   floatingActionButton: FloatingActionButton(
    //     child: const Icon(
    //       Icons.add,
    //       size: 30,
    //     ),
    //     backgroundColor: const Color(0xFF355C7D),
    //     onPressed: () {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => GoalPage()));
    //       // createAlertDialog(context).then((value) => setState(() {
    //       //       _goals.add('$value');
    //       //     }));
    //     },
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    //   body: Goals(_goals),
    // );
    return Goals(_goals);
  }
}
