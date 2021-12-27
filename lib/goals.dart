import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  //const GoalList({Key? key}) : super(key: key);
  final List<String> goals;

  Goals(this.goals);
  @override
  Widget build(BuildContext context) {
    print("Goal has been generated");

    return Column(
      children: goals
          .map(
            (element) => Container(
              //alignment: Alignment.center,
              margin: const EdgeInsets.all(10.0),
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  child: Row(
                    children: [
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.play_circle_fill,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 210,
                        child: Text(
                          element,
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Text(
                          "10/2021-10/2021",
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  //minimumSize: const Size(370, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  void printA() {
    print('AaAAAAAA');
  }
}
