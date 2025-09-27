import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingPageView extends StatelessWidget {
  OnboardingPageView({super.key, required this.model});
  ModelOnboarding model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(model.image, fit: BoxFit.fill, width: double.infinity),
        SizedBox(height: 20),
        Text(
          model.text,
          style: AppStyles.medium28black,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),

        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            model.textDiscription,
            style: AppStyles.regular14grey,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
