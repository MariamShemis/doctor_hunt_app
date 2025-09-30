import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/login_bottom_sheet.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/login_text_filed.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.splashBg),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),
                  Text(
                    "Welcome back",
                    style: AppStyles.medium28black.copyWith(fontSize: 24),
                  ),
                  Text(
                    "You can search c ourse, apply course and find\nscholarship for abroad studies",
                    style: AppStyles.regular14grey,
                  ),
                  SizedBox(height: 40),
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
                    hintText: "Enter your email",
                    suffixIcon: Icons.done,
                    keyboardtype: TextInputType.emailAddress,
                    isSuffix: true,
                  ),
                  SizedBox(height: 30),
                  LoginTextFiled(
                    hintText: "Enter your password",
                    suffixIcon: Icons.visibility_off,
                    keyboardtype: TextInputType.visiblePassword,
                    isView: true,
                    isSuffix: true,
                  ),
                  SizedBox(height: 60),
                  CustomElevatedButtom(
                    text: "Login",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.home,
                      );
                    },
                  ),
                  CustomTextButtom(
                    text: "Forgot password",
                    onPressed: _bottomSheetPassword,
                    color: AppColors.green,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: CustomTextButtom(
                      text: "Don’t have an account? Join us",
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.signup);
                      },
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _bottomSheetPassword() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: LoginBottomSheet(
            text: 'Forgot password',
            textDescription:
                'Enter your email for the verification proccesss,we will send 4 digits code to your email.',
            onpressed: _buildDigit,
            texthintField: 'Email',
          ),
        );
      },
    );
  }

  void _buildDigit() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: LoginBottomSheet(
            text: 'Enter 4 Digits Code',
            textDescription:
                'Enter the 4 digits code that you received on your email.',
            onpressed: _buildResertPassword,
            texthintField: "0",
            isDigit: true,
          ),
        );
      },
    );
  }

  void _buildResertPassword() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: LoginBottomSheet(
            text: 'Reset Password',
            textDescription:
                'Set the new password for your account so you can login and access all the features.',
            onpressed: () {
              Navigator.pushReplacementNamed(context, RoutesManager.login);
            },
            textElevatedButton: "Update Password",
            texthintField: "New Password",
            isTextField: true,
          ),
        );
      },
    );
  }
}
