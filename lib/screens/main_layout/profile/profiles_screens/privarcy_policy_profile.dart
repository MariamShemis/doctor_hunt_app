import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PrivarcyPolicyProfile extends StatelessWidget {
  const PrivarcyPolicyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.splashBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                Row(
                  spacing: 16,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.grey,
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.grey,
                      ),
                    ),
                    Text("Privacy policy", style: AppStyles.medium18black),
                  ],
                ),
                Text(
                  "Doctor Hunt Apps Privacy Policy",
                  style: AppStyles.light12grey.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color(0xFF677294),
                  ),
                ),
                Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ",
                  style: AppStyles.light12grey.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF677294),
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Column(
                      spacing: 45,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.green,
                          ),
                          child: Text(
                            "o",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.green,
                          ),
                          child: Text(
                            "o",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.green,
                          ),
                          child: Text(
                            "o",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.green,
                          ),
                          child: Text(
                            "o",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "The standard chunk of lorem Ipsum used since\n 1500s is reproduced below for those interested. \n\nSections 1.10.32 and 1.10.33 from de Finibus \n Bonorum et Malorum. The point of using. \n\nLorem Ipsum is that it has a moreIt is a long \n established fact that reader will distracted.\n\nThe point of using Lorem Ipsum is that it has a moreIt \n is a long established fact that reader will distracted.",
                      style: AppStyles.light12grey.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF677294),
                      ),
                    ),
                  ],
                ),
                Text(
                  "It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.",
                  style: AppStyles.light12grey.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF677294),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
