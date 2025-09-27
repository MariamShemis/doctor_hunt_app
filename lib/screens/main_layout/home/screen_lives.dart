import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ScreenLives extends StatelessWidget {
  ScreenLives({super.key, required this.model});
  ModelOnboarding model;
  List<ModelOnboarding> model1 = [
    ModelOnboarding(
      image: "assets/images/live_story1.png",
      text: "Everhart Tween",
      textDiscription: "Thanks for shareing doctor",
    ),
    ModelOnboarding(
      image: "assets/images/live_story2.png",
      text: "Bonebrake Mash ",
      textDiscription: "They treat immune system disorders",
    ),
    ModelOnboarding(
      image: "assets/images/live_story3.png",
      text: "Handler Wack",
      textDiscription: "This is the largest directory",
    ),
    ModelOnboarding(
      image: "assets/images/live_story4.png",
      text: "Comfort Love",
      textDiscription: "Depending on their education",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(HomeAssets.doctor5Live),
          fit: BoxFit.fill,
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF000000).withValues(alpha: 0.1),
            Color(0xFF000000).withValues(alpha: 0.9),
          ],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 20,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 30,
                        backgroundImage: AssetImage(model.image),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 30,
                          backgroundImage: AssetImage(model1[index].image),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model1[index].text,
                              style: AppStyles.medium18white,
                            ),
                            SizedBox(height: 5),
                            Text(
                              model1[index].textDiscription,
                              style: AppStyles.light20white.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 17),
                    itemCount: 4,
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
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
                        hintText: "Add a comment",
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.tag_faces_outlined,
                            color: AppColors.grey,
                          ),
                        ),
                        prefixIcon: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.green,
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.message, color: AppColors.white),
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
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
