import 'package:flutter/material.dart';

class reuseContent extends StatelessWidget {
  reuseContent({Key? key, required this.icon, required this.title})
      : super(
          key: key,
        );
  IconData icon;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 41,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
