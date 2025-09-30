import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerDoctorDetails extends StatelessWidget {
  const ContainerDoctorDetails({
    super.key,
    required this.text,
    required this.textDescription,
  });
  final String text;
  final String textDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grey.withValues(alpha: 0.2),
      ),
      child: Column(
        children: [
          Text("100", style: AppStyles.medium18black),
          Text("Runing", style: AppStyles.light12grey.copyWith(fontSize: 14)),
        ],
      ),
    );
  }
}
