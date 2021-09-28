import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Row keyPadFun(List<String> row) {
    // List col = ['1', '2', '3'];
    return Row(
      children: List.generate(
        row.length,
        (index) => _buttonOfNumberBuilder(row[index]),
      ),
    );
  }

  Widget _buttonOfNumberBuilder(String btn) {
    return tryButton(
      btnText: btn,
    );
  }

  Widget _pressedButton() {
    setState(() {
      if (widget.btnText == "C") {
        firstValue = "0";
        addValue = "0";
      } else if (widget.btnText == "⌫") {
        firstValue = firstValue.substring(0, firstValue.length - 1);
        if (firstValue == "") {
          firstValue = "0";
        }
      } else {
        firstValue = firstValue + widget.btnText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    firstValue,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    addValue,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['C', '⌫', '%', '/']),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['7', '8', '9', 'x']),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['4', '5', '6', '-']),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['1', '2', '3', '+']),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonZero(btnText: '0'),
                keyPadFun(['.', '=']),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
