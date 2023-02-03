import 'package:flutter/material.dart';
import 'package:bmi/bmi.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff0A0E21),
      scaffoldBackgroundColor: Color(0xff0A0E21),
    ),
    home: BMICAL(),
  ));
}


   
