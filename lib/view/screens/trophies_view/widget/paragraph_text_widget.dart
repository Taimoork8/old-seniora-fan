import 'package:flutter/material.dart';

class ParagraphTextWidget extends StatelessWidget {
  final String paragraphText;
  const ParagraphTextWidget({
    super.key,
    required this.paragraphText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        paragraphText,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          color: Color(0xff4F4F4F),
          height: 1.4,
          fontSize: 11,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
