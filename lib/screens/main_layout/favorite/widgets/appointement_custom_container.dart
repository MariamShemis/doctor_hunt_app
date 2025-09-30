import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppointementCustomContainer extends StatefulWidget {
  AppointementCustomContainer({
    super.key,
    required this.isSelected,
    required this.text,
  });
  bool isSelected;
  final String text;

  @override
  State<AppointementCustomContainer> createState() =>
      _AppointementCustomContainerState();
}

class _AppointementCustomContainerState
    extends State<AppointementCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isSelected = !widget.isSelected;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          //shape: BoxShape.circle,
          color: widget.isSelected
              ? AppColors.green
              : AppColors.green.withValues(alpha: 0.2),
        ),
        child: Text(
          widget.text,
          // "12:00\n AM",
          style: AppStyles.regular14grey.copyWith(
            color: widget.isSelected ? AppColors.white : AppColors.green,
          ),
        ),
      ),
    );
  }
}
