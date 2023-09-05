import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  final String title;
  const HeadingTextWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Lexend',
          fontSize: 11.5,
          fontWeight: FontWeight.w700,
          color: Color(
            0xffD9B24F,
          ),
        ),
      ),
    );
  }
}
