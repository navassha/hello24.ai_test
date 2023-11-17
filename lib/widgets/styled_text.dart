import 'package:flutter/material.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';

class StyledText extends StatelessWidget {
  const StyledText(
      {super.key,
      required this.text,
      required this.size,
      this.color = Colors.white,
      this.fontWeight,
      this.fontFamily = "Albertsans"});
  final String text;
  final double size;
  final Color color;
  final String fontFamily;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: context.width(size),
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );
  }
}
