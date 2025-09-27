import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureDoctorListView extends StatefulWidget {
  FeatureDoctorListView({super.key, required this.model});
  final ModelOnboarding model;

  @override
  State<FeatureDoctorListView> createState() => _FeatureDoctorListViewState();
}

class _FeatureDoctorListViewState extends State<FeatureDoctorListView> {
  bool isLiked = true;
  bool isStar = false;

  @override
  Widget build(BuildContext context) {
    print(
      "Image: ${widget.model.image}, Text: ${widget.model.text}, Desc: ${widget.model.textDiscription}, Rating: ${widget.model.rating}",
    );
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
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
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  setState(() {
                    isStar = !isStar;
                  });
                },
                icon: Icon(
                  isStar ? Icons.star_border : Icons.star,
                  color: isStar
                      ? AppColors.grey.withValues(alpha: .4)
                      : Colors.yellow,
                ),
              ),
              SizedBox(width: 3),
              Text(
                widget.model.rating,
                style: AppStyles.medium18black.copyWith(fontSize: 10),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 30,
            backgroundImage: AssetImage(widget.model.image),
          ),
          SizedBox(height: 10),
          Text(widget.model.text, style: AppStyles.medium18black),
          Row(
            children: [
              Icon(Icons.monetization_on_outlined, color: AppColors.green),
              //Text("$" ,style: AppStyles.light12grey.copyWith(color: AppColors.green),),
              Text(widget.model.textDiscription, style: AppStyles.light12grey),
            ],
          ),
        ],
      ),
    );
  }
}
