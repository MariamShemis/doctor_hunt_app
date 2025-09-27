import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/core/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController = PageController();

  int currentPage = 0;

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
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                itemCount: 3,
                controller: _pageController,
                onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
                itemBuilder: (context, index) =>
                    OnboardingPageView(model: ModelOnboarding.model[index]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomElevatedButtom(
                      text: "Get Started",
                      onPressed: () {
                        _pageController.animateToPage(
                          (currentPage + 1),
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        if (currentPage == 2) {
                          Navigator.pushReplacementNamed(
                            context,
                            RoutesManager.login,
                          );
                        }
                        ;
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.login,
                        );
                      },
                      child: Text("Skip", style: AppStyles.regular14grey),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
