import 'package:bmi/constantColor.dart';
import 'package:bmi/own_widgets/result.dart';
import 'package:bmi/own_widgets/reusebtn.dart';
import 'package:bmi/own_widgets/roundbtn.dart';
import 'package:bmi/own_widgets/won.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:math';

enum Gender { male, female }

class BMICAL extends StatefulWidget {
  const BMICAL({super.key});

  @override
  State<BMICAL> createState() => _BMICALState();
}

class _BMICALState extends State<BMICAL> {
  int weight = 70;
  int mass = 20;
  double height = 170;
  Gender selectedGender = Gender.male;
  void _nextScrren() {
    double result = weight / pow(height / 100, 2);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => Result(
                  result: result,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0A0E21),
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      selected: selectedGender == Gender.male ? true : false,
                      onPresses: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: reuseContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      selected: selectedGender == Gender.female ? true : false,
                      onPresses: (() {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      }),
                      child: reuseContent(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCards(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.round().toString(),
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('cm',
                            style: TextStyle(
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: kButtonColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15)),
                      child: Slider(
                        value: height,
                        min: 20,
                        max: 300,
                        onChanged: (values) {
                          height = values;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyWidget(
                          height: 'WEIGHT',
                          halbeg: 'kg',
                          mass: weight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundBtn(
                              icon: Icons.remove,
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                            ),
                            RoundBtn(
                              icon: Icons.add,
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                            )
                          ],
                        )
                      ],
                    )),
                  ),
                  Expanded(
                    child: ReusableCards(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyWidget(
                            height: 'AGE    ',
                            halbeg: 'yrs',
                            mass: mass,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundBtn(
                                icon: Icons.remove,
                                onPressed: () {
                                  mass--;
                                  setState(() {});
                                },
                              ),
                              RoundBtn(
                                icon: Icons.add,
                                onPressed: () {
                                  mass++;
                                  setState(() {});
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomBtn(
              onPressed: _nextScrren,
            ),
          ],
        ));
  }
}
