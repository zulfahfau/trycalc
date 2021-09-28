import 'package:flutter/material.dart';
import 'button_decrement.dart';
import 'button_increment.dart';

class CounterScreen extends StatefulWidget {
  int val;
  CounterScreen({Key? key, required this.val}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // int val = 0;
  _decrement() {
    setState(() {
      widget.val--;
    });
  }

  _increment() {
    setState(() {
      widget.val++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Column(
          children: [
            Text(widget.val.toString(), style: TextStyle(fontSize: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IncrementButton(increment: _increment),
                DecrementButtom(decrement: _decrement)
              ],
            )
          ],
        ));
  }
}
