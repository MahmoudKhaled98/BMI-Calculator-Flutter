import 'package:bmi_calculator/Constats.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/Buttom_Button.dart';
class CalculatingPage extends StatelessWidget {
  CalculatingPage({this.calcBmi,this.result,this.interpretation});

 final  String calcBmi;
 final String result;
 final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body:Column(

   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
  Expanded(
    child:Container(padding: EdgeInsets.all(10.0),
     alignment: Alignment.bottomLeft,
     child: Text('Your Result',
       style: kResultTitleStyle),),),
          Expanded(
            flex:5,
            child: ReusableCard(
              color: kInactiveCardColor,
            cardChild: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text(result,
                style:kResultStateResultStyle,
              ),
                Text(calcBmi,style: kResultStyle),
                Text(interpretation,textAlign:TextAlign.center,style:kResultTextStyle )
              ],

            ),),
          ),
      ButtomBotton(buttonTitle: 'RECALCULATE',
        onTap: (){
        Navigator.pop(context);
      },
      ),
        ],
      ),
    );
  }
}
