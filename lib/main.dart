import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: testingstate(),
  ));
}

class testingstate extends StatefulWidget {
  const testingstate({super.key});

  @override
  State<testingstate> createState() => _testingstateState();
}

class _testingstateState extends State<testingstate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Asyn and Await')),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () async {
          await Future.delayed(Duration(seconds: 2), () {
            print('samafale');
          });
          print('mohamed');
        },
        child: Text('press'),
      )),
    );
  }
}
