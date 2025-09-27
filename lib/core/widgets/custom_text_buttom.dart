import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: AppStyles.regular14grey.copyWith(color: color)),
    );
  }
}
