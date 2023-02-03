import 'package:bmi/constantColor.dart';
import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onPresses;
  ReusableCards({this.child, this.selected = false, this.onPresses});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresses,
      child: Container(
        child: child,
        decoration: BoxDecoration(
            color: selected == false ? kActiveColor : kInActiveColor,
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
