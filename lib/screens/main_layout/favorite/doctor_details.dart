import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/doctor_details_appointment.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/widgets/container_doctor_details.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  DoctorDetails({super.key, required this.model});
  ModelOnboarding model;

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isStar = false;
  bool isLiked = false;

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
                  spacing: 20,
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
                    Text("Doctors Details", style: AppStyles.medium18black),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: AppColors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            widget.model.image,
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
                                    widget.model.text,
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
                                widget.model.textDiscription,
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
                                  Text(widget.model.rating),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60,
                          vertical: 10,
                        ),
                        child: CustomElevatedButtom(
                          text: "Book Now",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorDetailsAppointment(
                                  model: widget.model,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white,
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ContainerDoctorDetails(
                          text: "100",
                          textDescription: "Runing",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ContainerDoctorDetails(
                          text: "100",
                          textDescription: "Runing",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ContainerDoctorDetails(
                          text: "100",
                          textDescription: "Runing",
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Services", style: AppStyles.medium18black),
                SizedBox(height: 20),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      "1-",
                      style: AppStyles.medium18black.copyWith(
                        fontSize: 13,
                        color: AppColors.green,
                      ),
                    ),
                    Text(
                      "Patient care should be the number one priority.",
                      style: AppStyles.regular14grey.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.grey.withValues(alpha: 0.3),
                  indent: 8,
                  endIndent: 8,
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      "2-",
                      style: AppStyles.medium18black.copyWith(
                        fontSize: 13,
                        color: AppColors.green,
                      ),
                    ),
                    Text(
                      "If you run your practiceyou know how frustrating.",
                      style: AppStyles.regular14grey.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.grey.withValues(alpha: 0.3),
                  indent: 8,
                  endIndent: 8,
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      "3-",
                      style: AppStyles.medium18black.copyWith(
                        fontSize: 13,
                        color: AppColors.green,
                      ),
                    ),
                    Text(
                      "That’s why some of appointment reminder system.",
                      style: AppStyles.regular14grey.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.grey.withValues(alpha: 0.3),
                  indent: 8,
                  endIndent: 8,
                ),
                Image.asset("assets/images/map.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
