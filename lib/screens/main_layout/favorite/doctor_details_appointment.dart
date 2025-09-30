import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/login_text_filed.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/doctor_appointment_comfirm.dart';
import 'package:flutter/material.dart';

class DoctorDetailsAppointment extends StatefulWidget {
  DoctorDetailsAppointment({super.key, required this.model});
  ModelOnboarding model;

  @override
  State<DoctorDetailsAppointment> createState() =>
      _DoctorDetailsAppointmentState();
}

class _DoctorDetailsAppointmentState extends State<DoctorDetailsAppointment> {
  bool isLiked = false;
  bool isStar = false;

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
                  spacing: 10,
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
                    Text("Appointment", style: AppStyles.medium18black),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white,
                  ),
                  child: Row(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      ? AppColors.grey.withValues(alpha: 0.4)
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
                                color: AppColors.grey.withValues(alpha: 0.4),
                              ),
                              SizedBox(width: 20),
                              Text(widget.model.rating),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text("Appointment", style: AppStyles.medium18black),
                SizedBox(height: 20),
                LoginTextFiled(
                  hintText: "Patient Name",
                  suffixIcon: Icons.done,
                  keyboardtype: TextInputType.name,
                ),
                SizedBox(height: 20),

                LoginTextFiled(
                  hintText: "Contact Number",
                  suffixIcon: Icons.done,
                  keyboardtype: TextInputType.name,
                ),
                SizedBox(height: 20),
                Text("Who is this patient?", style: AppStyles.medium18black),
                SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.green.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.green,
                                size: 50,
                              ),
                            ),
                            Text(
                              "Add",
                              style: AppStyles.regular14grey.copyWith(
                                color: AppColors.green,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        spacing: 5,
                        children: [
                          Image.asset(
                            "assets/images/patient1.png",
                            fit: BoxFit.fill,
                          ),
                          Text("My Self", style: AppStyles.regular14grey),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        spacing: 5,
                        children: [
                          Image.asset(
                            "assets/images/patient2.png",
                            fit: BoxFit.fill,
                          ),
                          Text("My Child", style: AppStyles.regular14grey),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        spacing: 5,
                        children: [
                          Image.asset(
                            "assets/images/patient1.png",
                            fit: BoxFit.fill,
                          ),
                          Text("My Self", style: AppStyles.regular14grey),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomElevatedButtom(
                    text: "Next",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorAppointmentComfirm(),
                        ),
                      );
                    },
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
