import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:marquee/marquee.dart';

class ScrollableText extends StatelessWidget {
  const ScrollableText(
    this.text, {
    super.key,
    this.color,
    this.fontSize = 17,
    this.screenWidthPercentage = 0.27,
    this.height = 20,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final Color? color;
  final double fontSize;
  final double screenWidthPercentage;
  final double height;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    TextStyle style = TextStyle(
      color: color,
      fontSize: fontSize,
    );

    return SizedBox(
      width: screenWidth * screenWidthPercentage,
      height: height,
      child: AutoSizeText(
        text,
        textAlign: textAlign,
        maxLines: 1,
        minFontSize: fontSize,
        style: style,
        overflowReplacement: Marquee(
          text: text,
          style: style,
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 50,
          velocity: 70,
          pauseAfterRound: const Duration(seconds: 3),
          numberOfRounds: 2,
          accelerationDuration: const Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: const Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
