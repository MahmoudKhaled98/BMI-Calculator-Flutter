import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/input_page.dart';
import 'Screens/Calculat_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>InputPage(),
        '/CalcPage':(context)=>CalculatingPage(),
      },
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1D2136),
          scaffoldBackgroundColor: Color(0xFF1D2136),
      ),
    );
  }
}
