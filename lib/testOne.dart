import 'package:flutter/cupertino.dart';

class TestOne extends StatefulWidget {
  const TestOne({Key? key}) : super(key: key);

  @override
  _TestOneState createState() => _TestOneState();
}

class _TestOneState extends State<TestOne> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: increment,
          child: Text("$_counter"),
        ),
      ],
    );
  }
}
