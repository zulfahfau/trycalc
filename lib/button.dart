import 'package:flutter/material.dart';
import 'my_home_page.dart';

class tryButton extends StatefulWidget {
  // const tryButton({Key? key}) : super(key: key);
  final String btnText;
  // const tryButton(this.btnText);
  tryButton({required this.btnText});

  @override
  State<tryButton> createState() => _tryButtonState();
}

class _tryButtonState extends State<tryButton> {
  _pressedButton() {
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
    return MaterialButton(
      height: 75.0,
      elevation: 10,
      shape: CircleBorder(
        side: BorderSide(color: Colors.transparent),
      ),
      color: Colors.orange,
      padding: EdgeInsets.all(30.0),
      child: Text(widget.btnText,
          style: TextStyle(color: Colors.white, fontSize: 30.0)),
      onPressed: () {},
    );
  }
}
