import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constats.dart';
class CardData extends StatelessWidget {
  CardData({@required this.icon,@required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80.0,color: Colors.white,),
        SizedBox(height: 10.0,),
        Text(text,style:kTextStyle1, )
      ],
    );
  }
}

