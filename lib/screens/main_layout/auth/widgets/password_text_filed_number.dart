import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordTextFiledNumber extends StatelessWidget {
  const PasswordTextFiledNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: AppColors.grey,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: AppColors.green,
        ),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusColor: AppColors.green,
          fillColor: AppColors.green,
          hintText: "0",
          hintStyle: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColors.grey.withValues(alpha: 0.4),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColors.grey.withValues(alpha: 0.4),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
