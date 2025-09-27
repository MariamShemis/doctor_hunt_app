import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: TextField(
        cursorColor: AppColors.green,

        style: AppStyles.regular14grey.copyWith(fontSize: 15),
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.close_rounded, color: AppColors.grey),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: AppColors.grey),
          ),
          hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: AppColors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.white),
          ),
          focusColor: AppColors.green,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
      ),
    );
  }
}
