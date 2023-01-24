import 'package:flutter/material.dart';

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({required this.cardWidget, required this.colors});
  final Widget cardWidget;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardWidget,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
