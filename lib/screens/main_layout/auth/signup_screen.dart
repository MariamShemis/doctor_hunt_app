import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/login_text_filed.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),
                  Text(
                    "Join us to start searching",
                    style: AppStyles.medium28black.copyWith(fontSize: 24),
                  ),
                  Text(
                    "You can search course, apply course and find\n scholarship for abroad studies",
                    style: AppStyles.regular14grey,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Image.asset("assets/images/google_icon.png"),
                              SizedBox(width: 10),
                              Text(
                                "Google",
                                style: AppStyles.light12grey.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/facebook_icon.png"),
                              SizedBox(width: 10),
                              Text(
                                "Facebook",
                                style: AppStyles.light12grey.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  LoginTextFiled(
                    hintText: "Name",
                    suffixIcon: Icons.done,
                    keyboardtype: TextInputType.name,
                  ),
                  SizedBox(height: 30),
                  LoginTextFiled(
                    hintText: "Email",
                    suffixIcon: Icons.done,
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30),
                  LoginTextFiled(
                    hintText: "Password",
                    suffixIcon: Icons.visibility_off,
                    keyboardtype: TextInputType.visiblePassword,
                    isView: true,
                    isSuffix: true,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.done, color: AppColors.black),
                      ),
                      Text(
                        "I agree with the Terms of Service & Privacy Policy",
                        style: AppStyles.regular14grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  CustomElevatedButtom(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.login,
                      );
                    },
                  ),
                  CustomTextButtom(
                    text: "Have an account? Log in",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.login,
                      );
                    },
                    color: AppColors.green,
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
