import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHomeListView extends StatelessWidget {
  CustomHomeListView({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            "assets/images/doctor${index}_live.png",
            fit: BoxFit.fill,
            //width: double.infinity,
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 20,
          margin: EdgeInsets.all(11),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Text("o", style: AppStyles.medium7white),
              ),
              SizedBox(width: 8),
              Text("Live", style: AppStyles.medium7white),
            ],
          ),
        ),
      ],
    );
  }
}
