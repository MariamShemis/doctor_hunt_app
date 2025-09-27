import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomGirdView extends StatefulWidget {
  CustomGirdView({super.key, required this.model});
  ModelOnboarding model;

  @override
  State<CustomGirdView> createState() => _CustomGirdViewState();
}

class _CustomGirdViewState extends State<CustomGirdView> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              alignment: Alignment.topRight,
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              icon: Icon(
                isLiked ? Icons.favorite_border : Icons.favorite,
                color: isLiked
                    ? AppColors.grey.withValues(alpha: 0.4)
                    : AppColors.red,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 30,
            backgroundImage: AssetImage(widget.model.image),
          ),
          SizedBox(height: 10),
          Text(
            widget.model.text,
            style: AppStyles.medium18black.copyWith(fontSize: 15),
          ),
          Text(
            widget.model.textDiscription,
            style: AppStyles.regular14grey.copyWith(
              fontSize: 12,
              color: AppColors.green,
            ),
          ),
        ],
      ),
    );
  }
}
