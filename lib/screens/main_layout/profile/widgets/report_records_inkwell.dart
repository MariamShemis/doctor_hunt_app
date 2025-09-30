import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ReportRecordsInkwell extends StatefulWidget {
  ReportRecordsInkwell({
    super.key,
    this.isSelected = false,
    required this.icons,
    required this.text,
  });
  bool isSelected;
  final IconData icons;
  final String text;

  @override
  State<ReportRecordsInkwell> createState() => _ReportRecordsInkwellState();
}

class _ReportRecordsInkwellState extends State<ReportRecordsInkwell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Column(
        children: [
          Icon(
            widget.icons,
            color: widget.isSelected ? AppColors.green : AppColors.grey,
            size: 40,
          ),
          Text(
            widget.text,
            style: AppStyles.light12grey.copyWith(
              color: widget.isSelected ? AppColors.green : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
