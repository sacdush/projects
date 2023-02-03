import 'package:bmi/constantColor.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({Key? key, this.onPressed, this.title}) : super(key: key);
  final Function()? onPressed;
  String? title;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kButtonColor,
      constraints: BoxConstraints.tightFor(width: double.infinity, height: 50),
      onPressed: onPressed,
      child: Text(
        title ?? 'Calculate',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
    );
  }
}
