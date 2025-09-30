import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/widgets/choose_settings_forward_helpcenter.dart';
import 'package:flutter/material.dart';

class SettingsProfile extends StatelessWidget {
  const SettingsProfile({super.key});

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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
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
                      Text("Settings", style: AppStyles.medium18black),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Account settings",
                    style: AppStyles.medium18black.copyWith(
                      color: AppColors.grey,
                    ),
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Change Password",
                    colorContainer: AppColors.red,
                    iconLeft: Icons.private_connectivity,
                    isIconLeft: true,
                    onpressed: () {},
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey,
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Notifications",
                    colorContainer: AppColors.green,
                    iconLeft: Icons.notifications_active,
                    isIconLeft: true,
                    onpressed: () {},
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Statistics",
                    colorContainer: Colors.blueAccent,
                    iconLeft: Icons.stacked_bar_chart_outlined,
                    isIconLeft: true,
                    onpressed: () {},
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "About us",
                    colorContainer: Colors.orangeAccent,
                    iconLeft: Icons.personal_injury_outlined,
                    isIconLeft: true,
                    onpressed: () {},
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  SizedBox(height: 15),
                  Text("More options", style: AppStyles.medium18black),
                  Text(
                    "Text Messenger",
                    style: AppStyles.light12grey.copyWith(fontSize: 16),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  Text(
                    "Phone calls",
                    style: AppStyles.light12grey.copyWith(fontSize: 16),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Languages",
                    textIcon: "English",
                    onpressed: () {},
                    isTextIconRight: true,
                  ),

                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Currency",
                    textIcon: "USD",
                    onpressed: () {},
                    isTextIconRight: true,
                  ),

                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Currency",
                    textIcon: "Facebook, Google",
                    onpressed: () {},
                    isTextIconRight: true,
                  ),

                  Divider(
                    thickness: 0.5,
                    color: AppColors.grey.withValues(alpha: 0.5),
                    endIndent: 20,
                    indent: 10,
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
