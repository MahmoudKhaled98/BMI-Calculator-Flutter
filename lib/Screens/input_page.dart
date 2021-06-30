import 'package:bmi_calculator/Calc_brain.dart';
import 'package:bmi_calculator/Screens/Calculat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'package:bmi_calculator/Components/reusable_card.dart';
import'package:bmi_calculator/Components/Card_data.dart';
import 'package:bmi_calculator/Constats.dart';
import 'package:bmi_calculator/Components/Buttom_Button.dart';
import 'package:bmi_calculator/Components/Costumized_button.dart';
enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
Gender gender;
int height=120;
int weight=50;
int age=18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          children: <Widget>[Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(//Male Button
                      child: ReusableCard(
                        onTap:(){
                          setState(() {
                            gender=Gender.male;
                          });
                        },
                        color: gender==Gender.male? kActiveCardColor:kInactiveCardColor,
                        cardChild: CardData(icon: FontAwesomeIcons.mars,text:'MALE'),
                      ),
                  ),
                  Expanded(
                    child: ReusableCard(onTap: (){
                     setState(() {
                       gender=Gender.female;
                     });
                    },
                      color: gender==Gender.female?kActiveCardColor:kInactiveCardColor,
                      cardChild: CardData(icon: FontAwesomeIcons.venus,text:'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text('HEIGHT',style: kTextStyle1,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children:<Widget> [
                          Text(height.toString(),style: kNumberTextStyle),
                          Text('cm',style:kTextStyle1),

                        ],),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: Color(0xFFEB1555) ,
                              overlayColor: Color(0x29EB1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.white54,
                              thumbShape:RoundSliderThumbShape(enabledThumbRadius: 18),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                            ),
                            child: Slider(value: height.toDouble(),
                                min: 120,
                                max:220,
                                onChanged: (double value){
                                  setState(() {
                                    height=value.round();
                                  });
                                }),
                          )
                      ],),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        Text('WEIGHT',style:kTextStyle1),
                        Text(weight.toString(),style:kNumberTextStyle,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                          CustomizedButton(icon:FontAwesomeIcons.minus,
                          onPress:(){
                            setState(() {
                              weight--;
                            });
                          }),
                          SizedBox(width: 10,),
                          CustomizedButton(icon:FontAwesomeIcons.plus,
                          onPress: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ])
                      ]),
                      color: kActiveCardColor,
                      
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                        Text('Age', style: kTextStyle1),
                        Text(age.toString(),style: kNumberTextStyle),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          CustomizedButton(icon:FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              age--;
                            });
                          }
                          ,),
                          SizedBox(width: 10),
                          CustomizedButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: (){
                             setState(() {
                               age++;
                             });
                            },

                          ),
                        ],),
                      ],),
                      color: kActiveCardColor,
                 ),
                  ),
                ],
              ),
            ),
         ButtomBotton(buttonTitle: 'CALCULATE',onTap: (){
           CalcBrain calc =CalcBrain(height: height,weight: weight);
           Navigator.push(context,
             MaterialPageRoute(builder: (context)=>CalculatingPage(
               calcBmi: calc.calcBmi(),
               result: calc.getResult(),
               interpretation: calc.getInterpretation(),
             ),
             ),
           );
         }),
          ],
        ));
  }
}





