import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundBtn extends StatelessWidget {
  RoundBtn({super.key, required this.icon, this.onPressed});
  IconData icon;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              splashColor: Colors.red,
              shape: CircleBorder(),
              fillColor: Colors.grey,
              constraints: BoxConstraints.tightFor(width: 40, height: 40),
              onPressed: onPressed,
              child: Icon(icon),
            ),
          ],
        )
      ],
    );
  }
}
