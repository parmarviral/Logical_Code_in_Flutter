import 'dart:math'; //Import Math Lib to perform Random Number Generation
import 'package:flutter/material.dart'; //Material Lib

void main() => runApp(SimpleApp());  // called SimpleApp constructor

class SimpleApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lgical code",
      home: appbar_code(), //call appbar_code() Function
    );
  }
  appbar_code(){
    return Scaffold(
      appBar: AppBar(
        title:Text("Logical code in Flutter") ,
      ),
      body: Lucky_num(), //called Lucky_num Constructor
    );
  }
}
class Lucky_num extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          lucky_logic(), //Called Logic to generate The Number
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
  String lucky_logic(){
    var RandomNum = Random();
    int LuckyNum = RandomNum.nextInt(100);
    return "Your Lucky Number is: $LuckyNum" ;
  }

}