import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_home_list_view.dart';
import 'package:doctor_hunt_app/core/widgets/custom_properitise_doctor.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt_app/core/widgets/feature_doctor_list_view.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/doctor_details.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/screen_lives.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isStar = false;
  List<ModelOnboarding> model1 = [
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor1.png",
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "3.7",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor2.png",
      text: "Dr. Strain",
      textDiscription: "22.00/ hours",
      rating: "3.0",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor3.png",
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "2.9",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor1.png",
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "3.7",
    ),
  ];
  int index = 0;
  List<ModelOnboarding> model3 = [
    ModelOnboarding(
      image: HomeAssets.findDr1,
      text: "Dr. Pediatrician",
      textDiscription: "Specialist Cardiologist ",
      rating: "28.00/hr",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr2,
      text: "Dr. Strain",
      textDiscription: "22.00/ hours",
      rating: "27.00/hr",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr3,
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "29.00/hr",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr4,
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "30.00/hr",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr5,
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "24.00/hr",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr3,
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "28.00/hr",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.green,
                      Colors.greenAccent.withValues(alpha: 0.8),
                    ],
                  ),
                  // color: AppColors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(38),
                  ),
                ),
                height: 220,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi Handwerker! ",
                                  style: AppStyles.light20white,
                                ),
                                Text(
                                  "Find Your Doctor",
                                  style: AppStyles.bold25white,
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(HomeAssets.profileHome),
                            SizedBox(width: 20),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                child: CustomTextField(text: "Search...."),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Live Doctors", style: AppStyles.medium18black),
                SizedBox(height: 10),
                SizedBox(
                  height: 200, //MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ScreenLives(model: model1[index]),
                          ),
                        );
                      },
                      child: CustomHomeListView(index: index + 1),
                    ),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100, //MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.findDoctors);
                      },
                      child: CustomProperitiseDoctor(
                        index: index,
                        color: [
                          Color(0xFF765AFC),
                          AppColors.green.withValues(alpha: 0.5),
                          Color(0xFFFE7F44).withValues(alpha: 0.4),
                          Color(0xFFFF484C),
                        ],
                      ),
                    ),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Doctor", style: AppStyles.medium18black),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RoutesManager.popularDoctor,
                        );
                      },
                      child: Text("See all >", style: AppStyles.light12grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 280, //MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: 30, height: 10),
                    itemBuilder: (context, index) => Column(
                      children: [
                        Image.asset(
                          "assets/images/popular_doctor${index + 1}.png",

                          fit: BoxFit.fill,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  index == 1
                                      ? "Dr. Fillerup Grab"
                                      : "Dr. Blessing",
                                  style: AppStyles.medium18black,
                                ),
                                Text(
                                  index == 1
                                      ? "Medicine Specialist"
                                      : "Dentist Specialist",
                                  style: AppStyles.light12grey,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isStar = !isStar;
                                        });
                                      },
                                      icon: Icon(
                                        isStar ? Icons.star_border : Icons.star,
                                        color: isStar
                                            ? AppColors.grey.withValues(
                                                alpha: .4,
                                              )
                                            : Colors.yellow,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isStar = !isStar;
                                        });
                                      },
                                      icon: Icon(
                                        isStar ? Icons.star_border : Icons.star,
                                        color: isStar
                                            ? AppColors.grey.withValues(
                                                alpha: .4,
                                              )
                                            : Colors.yellow,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isStar = !isStar;
                                        });
                                      },
                                      icon: Icon(
                                        isStar ? Icons.star_border : Icons.star,
                                        color: isStar
                                            ? AppColors.grey.withValues(
                                                alpha: .4,
                                              )
                                            : Colors.yellow,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.grey.withValues(
                                        alpha: 0.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Feature Doctor", style: AppStyles.medium18black),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DoctorDetails(model: model3[index]),
                          ),
                        );
                      },
                      child: Text("See all >", style: AppStyles.light12grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200, //MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: 10, height: 10),
                    itemBuilder: (context, index) =>
                        FeatureDoctorListView(model: model1[index]),
                    itemCount: model1.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
