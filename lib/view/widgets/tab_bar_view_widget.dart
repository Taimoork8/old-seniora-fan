import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  final String name;
  const TabBarViewWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 92,
      child: Center(
          child: Text(
        name,
        style: const TextStyle(
          color: Color(0xff000000),
          fontSize: 12,
        ),
      )),
    );
  }
}
