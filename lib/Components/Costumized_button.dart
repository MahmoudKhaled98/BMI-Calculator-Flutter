import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  CustomizedButton({this.icon,this.onPress});
  final  IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton
      (child: Icon(icon),
      onPressed:onPress,
      elevation: 5.0,
      fillColor: Colors.white54,
      shape:CircleBorder(),
      constraints:BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}