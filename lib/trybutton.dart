import 'package:flutter/material.dart';

class tryButton extends StatelessWidget {
  // const tryButton({Key? key}) : super(key: key);
  final String btnText;
  // const tryButton(this.btnText);
  const tryButton({required this.btnText});

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
      child:
          Text(btnText, style: TextStyle(color: Colors.white, fontSize: 30.0)),
      onPressed: () {},
    );
  }
}
