import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/widgets/choose_settings_forward_helpcenter.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/widgets/profile_choose_widget.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

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
                      Text("Help Center", style: AppStyles.medium18black),
                    ],
                  ),
                  CustomTextField(text: "Search"),
                  ChooseSettingsForwardHelpcenter(
                    text: "Booking a new Appointment",
                    onpressed: () {},
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Existing Appointment",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Online consultations",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Feedbacks",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Medicine orders",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Diagnostic Tests",
                    onpressed: () {},
                  ),
                  ChooseSettingsForwardHelpcenter(
                    text: "Health plans",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "My account and Practo Drive",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Have a feature in mind",
                    onpressed: () {},
                  ),

                  ChooseSettingsForwardHelpcenter(
                    text: "Other issues",
                    onpressed: () {},
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
