import 'package:flutter/material.dart';

class CustomProperitiseDoctor extends StatelessWidget {
  const CustomProperitiseDoctor({
    super.key,
    required this.index,
    required this.color,
  });
  final int index;
  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: color[index],
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
      ),
      child: Image.asset("assets/images/properitise_doctors${index + 1}.png"),
    );
  }
}
