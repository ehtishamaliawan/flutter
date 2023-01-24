import 'package:flutter/material.dart';

class RepeatICONnTEXT extends StatelessWidget {
  RepeatICONnTEXT({required this.iconData, required this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    );
  }
}
