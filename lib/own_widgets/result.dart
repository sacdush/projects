import 'package:bmi/own_widgets/reusable.dart';
import 'package:bmi/own_widgets/won.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.result});
  double result;
  String check() {
    if (result > 0 && result < 18.5)
      return 'Under Weight';
    else if (result > 18.5 && result < 24.9)
      return 'you\'re in the healthy weight';
    else if (result > 24.9 && result < 30)
      return 'you\'re in the overweight ';
    else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 14),
            child: Text("Your Results"),
          ),
          Expanded(
            child: ReusableCards(
              selected: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                      child: Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(fontSize: 40, fontFamily: "Georgia"),
                  )),
                  const SizedBox(
                    height: 22,
                  ),
                  Center(
                      child: Text(
                    check(),
                    style: TextStyle(fontSize: 20, fontFamily: "Georgia"),
                  ))
                ],
              ),
            ),
          ),
          CustomBtn(
            title: "Re-Calculate",
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
