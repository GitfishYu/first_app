import 'package:flutter/material.dart';

import './goals.dart';

class GoalManager extends StatefulWidget {
  final String startingGoal;

  GoalManager(this.startingGoal, {Key? key}) : super(key: key);
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

  // void addGoal() {
  //   setState(() {
  //     _goals.add('New Goal');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // print("Manager being updated");
    // addGoal();
    // if (globals.click == true) {
    //   print(globals.click);
    //   globals.click = false;
    // }

    // return Goals(_goals);

    // return FloatingActionButton(
    //   child: const Icon(Icons.add),
    //   backgroundColor: const Color(0xFF355C7D),
    //   onPressed: () {
    //     setState(() {
    //       _goals.add('New Goal');
    //       Goals A = Goals(_goals);
    //       A.printA();
    //     });
    //   },
    // );

    // return Column(
    //   children: [
    //     Container(
    //       margin: EdgeInsets.all(10.0),
    //       child: FloatingActionButton(
    //         child: const Icon(
    //           Icons.add,
    //           size: 30,
    //         ),
    //         backgroundColor: const Color(0xFF355C7D),
    //         // style: ButtonStyle(
    //         //     backgroundColor: MaterialStateProperty.all(Color(0xFF355C7D)),
    //         //     //border: MaterialStateProperty.all(Border())
    //         //     minimumSize: MaterialStateProperty.all(Size.fromRadius(25)),
    //         //     shape: MaterialStateProperty.all(
    //         //         CircleBorder(side: BorderSide(color: Color(0xFF355C7D))))),
    //         onPressed: () {
    //           setState(() {
    //             _goals.add('New Goal');
    //           });
    //         },
    //         //child: Text('Add Goal'),
    //       ),

    //     ),
    //     Goals(_goals)
    //   ],
    // );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: const Color(0xFF355C7D),
        onPressed: () {
          setState(() {
            _goals.add('New Goal');
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Goals(_goals),
    );
  }
}
