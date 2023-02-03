import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  MyWidget({
    super.key,
    required this.height,
    required this.mass,
    required this.halbeg,
  });
  String height;
  String halbeg;
  int mass;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(height),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              mass.toString(),
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(halbeg,
                style: TextStyle(
                  color: Colors.grey,
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
