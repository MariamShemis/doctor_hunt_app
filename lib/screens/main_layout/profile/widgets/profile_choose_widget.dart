import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProfileChooseWidget extends StatelessWidget {
  const ProfileChooseWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.iconLeft,
    required this.iconRight,
  });
  final String text;
  final VoidCallback onPressed;
  final IconData iconLeft;
  final IconData iconRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Icon(iconLeft, size: 30, color: AppColors.white),
        Text(text, style: AppStyles.medium18white),
        IconButton(
          onPressed: onPressed,
          icon: Icon(iconRight, size: 20, color: AppColors.white),
        ),
      ],
    );
  }
}
