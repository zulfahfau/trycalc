import 'package:flutter/material.dart';
import 'trybutton.dart';
import 'buttonzero.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Row keyPadFun(List<String> col) {
    // List col = ['1', '2', '3'];
    return Row(
        children: List.generate(
            col.length, (index) => _buttonOfNumberBuilder(col[index])));
  }

  Widget _buttonOfNumberBuilder(String btn) {
    return tryButton(
      btnText: btn,
    );
  }

  // Widget btn(btnText) {
  //   return MaterialButton(
  //     height: 75.0,
  //     elevation: 10,
  //     shape: CircleBorder(
  //       side: BorderSide(color: Colors.transparent),
  //     ),
  //     color: Colors.orange,
  //     padding: EdgeInsets.all(30.0),
  //     child:
  //         Text(btnText, style: TextStyle(color: Colors.white, fontSize: 30.0)),
  //     onPressed: () {},
  //   );
  // }

  // Widget btnZero(btnText) {
  //   return Container(
  //     padding: EdgeInsets.only(bottom: 10.0),
  //     child: ElevatedButton(
  //         onPressed: () {},
  //         child: Text(btnText, style: TextStyle(fontSize: 30.0)),
  //         style: ElevatedButton.styleFrom(
  //             primary: Color(0xff333333),
  //             padding:
  //                 EdgeInsets.only(left: 81, top: 20, right: 81, bottom: 20),
  //             shape: StadiumBorder())),
  //   );
  // }

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
                    '0',
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
                keyPadFun(['AC', '+/-', '%', '/']),
                const tryButton(btnText: 'AC'),
                const tryButton(btnText: '+/-'),
                const tryButton(btnText: '%'),
                const tryButton(btnText: '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['7', '8', '9', 'x']),

                // const tryButton(btnText: '7'),
                // const tryButton(btnText: '8'),
                // const tryButton(btnText: '9'),
                // const tryButton(btnText: 'x'),
                // btn('7'),
                // btn('8'),
                // btn('9'),
                // btn('x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['4', '5', '6', '-']),

                // const tryButton(btnText: '4'),
                // const tryButton(btnText: '5'),
                // const tryButton(btnText: '6'),
                // const tryButton(btnText: '-'),
                // btn('4'),
                // btn('5'),
                // btn('6'),
                // btn('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                keyPadFun(['1', '2', '3']),
                // const tryButton(btnText: '1'),
                // const tryButton(btnText: '2'),
                // const tryButton(btnText: '3'),
                const tryButton(btnText: '+'),
                // btn('1'),
                // btn('2'),
                // btn('3'),
                // btn('+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonZero(btnText: '0'),
                tryButton(btnText: '.'),
                tryButton(btnText: '='),

                // btn('.'),
                // btn('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




// class Homepage extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<Homepage> {
//   dynamic text ='0';
//   double numOne = 0;
//   double numTwo = 0;
//
//   dynamic result = '';
//   dynamic finalResult = '';
//   dynamic opr = '';
//   dynamic preOpr = '';
//
//
//   Widget btn(btnText, Color color) {
//     return Container(
//         padding: EdgeInsets.only(bottom: 10.0),
//         child: new RaisedButton(
//             child: Text(btnText,
//               style: TextStyle(
//                   fontSize: 30
//               ),
//             ),
//             onPressed: (){
//               calculation(btnText);
//             },
//             color: color,
//             padding: EdgeInsets.all(22.0),
//             shape: CircleBorder()
//
//         )
//     );
//   }
//
//   Widget btnZero(btnText, Color color) {
//     return Container(
//         padding: EdgeInsets.only(bottom: 10.0),
//         child: new RaisedButton(
//             child: Text(btnText,
//               style: TextStyle(
//                   fontSize: 30
//               ),
//             ),
//             onPressed: (){
//               calculation(btnText);
//             },
//             color: color,
//             padding: EdgeInsets.only(left:81 ,top:20,right:81,bottom: 20),
//             shape: StadiumBorder()
//
//         )
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: null,
//       backgroundColor: Colors.black,
//       body: Container(
//         margin: EdgeInsets.only(bottom: 20.0),
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             Row(children: <Widget>[
//               Expanded(
//                 child: Text(
//                   text,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 60.0,
//                   ),
//                   textAlign: TextAlign.right,
//                   maxLines: 1,
//                 ),
//               )
//             ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 btn('C',const Color(0xffa5a5a5)), // AARRGGBB
//                 btn('+/-',const Color(0xffa5a5a5)),
//                 btn('%',const Color(0xffa5a5a5)),
//                 btn('/', Colors.orange),
//               ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 btn('7',const Color(0xff333333)),
//                 btn('8',const Color(0xff333333)),
//                 btn('9',const Color(0xff333333)),
//                 btn('x',Colors.orange),
//               ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 btn('4',const Color(0xff333333)),
//                 btn('5',const Color(0xff333333)),
//                 btn('6',const Color(0xff333333)),
//                 btn('-',Colors.orange),
//               ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 btn('1',const Color(0xff333333)),
//                 btn('2',const Color(0xff333333)),
//                 btn('3',const Color(0xff333333)),
//                 btn('+',Colors.orange),
//               ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 btnZero('0',const Color(0xff333333)),
//                 btn('.',const Color(0xff333333)),
//                 btn('=',Colors.orange),
//               ],),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void calculation(btnText) {
//
//
//     if(btnText  == 'C') {
//       text ='0';
//       numOne = 0;
//       numTwo = 0;
//       result = '';
//       finalResult = '';
//       opr = '';
//       preOpr = '';
//
//     } else if( opr == '=' && btnText == '=') {
//
//       if(preOpr == '+') {
//         finalResult = add();
//       } else if( preOpr == '-') {
//         finalResult = sub();
//       } else if( preOpr == 'x') {
//         finalResult = mul();
//       } else if( preOpr == '/') {
//         finalResult = div();
//       }
//
//     } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {
//
//       if(numOne == 0) {
//         numOne = double.parse(result);
//       } else {
//         numTwo = double.parse(result);
//       }
//
//       if(opr == '+') {
//         finalResult = add();
//       } else if( opr == '-') {
//         finalResult = sub();
//       } else if( opr == 'x') {
//         finalResult = mul();
//       } else if( opr == '/') {
//         finalResult = div();
//       }
//       preOpr = opr;
//       opr = btnText;
//       result = '';
//     }
//     else if(btnText == '%') {
//       result = numOne / 100;
//       finalResult = doesContainDecimal(result);
//     } else if(btnText == '.') {
//       if(!result.toString().contains('.')) {
//         result = result.toString()+'.';
//       }
//       finalResult = result;
//     }
//
//     else if(btnText == '+/-') {
//       result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
//       finalResult = result;
//
//     }
//
//     else {
//       result = result + btnText;
//       finalResult = result;
//     }
//
//
//     setState(() {
//       text = finalResult;
//     });
//
//   }
//
//
//   String add() {
//     result = (numOne + numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//   String sub() {
//     result = (numOne - numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String mul() {
//     result = (numOne * numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String div() {
//     result = (numOne / numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//
//   String doesContainDecimal(dynamic result) {
//
//     if(result.toString().contains('.')) {
//       List<String> splitDecimal = result.toString().split('.');
//       if(!(int.parse(splitDecimal[1]) > 0))
//         return result = splitDecimal[0].toString();
//     }
//     return result;
//   }
//
// }

