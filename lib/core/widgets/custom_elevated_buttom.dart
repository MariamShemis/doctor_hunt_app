import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppStyles.medium18white),
    );
  }
}
