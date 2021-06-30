import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constats.dart';
class ButtomBotton extends StatelessWidget {
  const ButtomBotton({this.buttonTitle,this.onTap});
  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top:15.0),
        color: kContainerColor,
        height: 100.0,
        width: double.infinity,
        child: Center(child: Text(buttonTitle,style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black),),
        ),),
    );
  }
}