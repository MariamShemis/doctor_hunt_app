import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/help_center.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/medical_records_profile.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/medicine_orders.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/my_doctors_profile.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/privarcy_policy_profile.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/settings_profile.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/widgets/profile_choose_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage(AppAssets.splashBg),
        //   fit: BoxFit.fill,
        // ),
        gradient: LinearGradient(
          colors: [Color(0xFF6F7FA1).withValues(alpha: 0.9), Color(0xFF536184)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/live_story2.png",
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Abdullah Mamun", style: AppStyles.medium18white),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.phone, color: AppColors.white, size: 14),
                            Text(
                              " 01303-527300",
                              style: AppStyles.light20white.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: AppColors.white,
                            title: Text(
                              "Log Out",
                              style: AppStyles.medium18black.copyWith(
                                fontSize: 26,
                              ),
                            ),
                            content: Text(
                              "Are you sure you want to logout?",
                              style: AppStyles.regular14grey.copyWith(
                                fontSize: 17,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: AppStyles.medium18black.copyWith(
                                    color: AppColors.green,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    RoutesManager.login,
                                  );
                                },
                                child: Text(
                                  "OK",
                                  style: AppStyles.medium18black.copyWith(
                                    color: AppColors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.output_rounded,
                            size: 20,
                            color: AppColors.white,
                          ),
                          Text("Logout", style: AppStyles.medium18white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      spacing: 30,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileChooseWidget(
                          text: "My Doctors",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDoctorsProfile(),
                              ),
                            );
                          },
                          iconLeft: Icons.person,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Medical Records",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MedicalRecordsProfile(),
                              ),
                            );
                          },
                          iconLeft: Icons.receipt_long_rounded,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Payments",
                          onPressed: () {},
                          iconLeft: Icons.credit_card,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Medicine Orders",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MedicineOrders(),
                              ),
                            );
                          },
                          iconLeft: Icons.on_device_training_outlined,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Test Bookings",
                          onPressed: () {},
                          iconLeft: Icons.calendar_month_rounded,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Privacy & Policy",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivarcyPolicyProfile(),
                              ),
                            );
                          },
                          iconLeft: Icons.policy_rounded,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Help Center",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelpCenter(),
                              ),
                            );
                          },
                          iconLeft: Icons.help,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                        ProfileChooseWidget(
                          text: "Settings",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingsProfile(),
                              ),
                            );
                          },
                          iconLeft: Icons.settings,
                          iconRight: Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/profile_bg.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
