import 'package:flutter/material.dart';
import 'my_home_page.dart';

class ButtonZero extends StatelessWidget {
  // const ButtonZero({Key? key}) : super(key: key);
  final String btnText;
  // const tryButton(this.btnText);
  const ButtonZero({required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: ElevatedButton(
          onPressed: () {},
          child: Text(btnText, style: TextStyle(fontSize: 30.0)),
          style: ElevatedButton.styleFrom(
              primary: Color(0xff333333),
              padding:
                  EdgeInsets.only(left: 81, top: 20, right: 81, bottom: 20),
              shape: StadiumBorder())),
    );
  }
}
