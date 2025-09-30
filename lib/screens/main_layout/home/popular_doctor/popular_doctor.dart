import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PopularDoctor extends StatefulWidget {
  const PopularDoctor({super.key});

  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
  bool isStar = false;
  bool isLiked = false;

  List<ModelOnboarding> model1 = [
    ModelOnboarding(
      image: HomeAssets.findDr1,
      text: "Dr. Pediatrician",
      textDiscription: "Specialist Cardiologist ",
      rating: "2.4 ",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr2,
      text: "Dr. Strain",
      textDiscription: "22.00/ hours",
      rating: "3.0",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr3,
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "2.9",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr4,
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "3.7",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr5,
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "3.7",
    ),
    ModelOnboarding(
      image: HomeAssets.findDr3,
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "2.9",
    ),
  ];

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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: AppColors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Doctor", style: AppStyles.medium18black),
                    TextButton(
                      onPressed: () {},
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
                          model1[index].image,
                          fit: BoxFit.fill,
                          width: 160,
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
                                  model1[index].text,
                                  style: AppStyles.medium18black,
                                ),
                                Text(
                                  model1[index].textDiscription,
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
                    itemCount: model1.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("Category", style: AppStyles.medium18black),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            model1[index].image,
                            fit: BoxFit.fill,
                            width: 100,
                          ),
                          SizedBox(width: 13),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    model1[index].text,
                                    style: AppStyles.medium18black,
                                  ),
                                  SizedBox(width: 50),
                                  IconButton(
                                    alignment: Alignment.topRight,
                                    onPressed: () {
                                      setState(() {
                                        isLiked = !isLiked;
                                      });
                                    },
                                    icon: Icon(
                                      isLiked
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                      color: isLiked
                                          ? AppColors.grey.withValues(
                                              alpha: 0.4,
                                            )
                                          : AppColors.red,
                                    ),
                                  ),
                                ],
                              ),

                              Text(
                                model1[index].textDiscription,
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
                                          ? AppColors.grey.withValues(alpha: .4)
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
                                          ? AppColors.grey.withValues(alpha: .4)
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
                                          ? AppColors.grey.withValues(alpha: .4)
                                          : Colors.yellow,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withValues(
                                      alpha: 0.4,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(model1[index].rating),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 15),
                    itemCount: model1.length,
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
