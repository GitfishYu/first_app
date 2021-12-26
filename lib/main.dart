import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        body: Column(
          children: [
            Container(
              //margin: const EdgeInsets.all(10),
              //alignment: Alignment.center,
              width: 350.0,
              height: 70.0,
              color: Colors.white,
              child: RaisedButton(
                child: Text("Goal 1"),
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {},
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Color(0xFF355C7D),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
