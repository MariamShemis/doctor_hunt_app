import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/login_text_filed.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/widgets/password_text_filed_number.dart';
import 'package:flutter/material.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    super.key,
    required this.text,
    required this.textDescription,
    required this.onpressed,
    this.isDigit = false,
    this.isTextField = false,
    required this.texthintField,
    this.textElevatedButton = "Continue",
  });
  final String text;
  final String texthintField;
  final String textDescription;
  final String textElevatedButton;
  final VoidCallback onpressed;
  final bool isDigit;
  final bool isTextField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 60),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            // "Forget pasword",
            style: AppStyles.medium28black.copyWith(fontSize: 24),
          ),
          Text(
            textDescription,
            // "Enter your email for the verification proccesss,we will send 4 digits code to your email.",
            style: AppStyles.regular14grey,
          ),
          isDigit
              ? Row(
                  spacing: 20,
                  children: [
                    PasswordTextFiledNumber(),
                    PasswordTextFiledNumber(),
                    PasswordTextFiledNumber(),
                    PasswordTextFiledNumber(),
                  ],
                )
              : isTextField
              ? Column(
                  spacing: 30,
                  children: [
                    LoginTextFiled(
                      hintText: "New Password",
                      suffixIcon: Icons.visibility_off,
                      isSuffix: true,
                      keyboardtype: TextInputType.emailAddress,
                    ),

                    LoginTextFiled(
                      hintText: "Re-enter Password",
                      isSuffix: true,
                      suffixIcon: Icons.visibility_off,
                      keyboardtype: TextInputType.emailAddress,
                    ),
                  ],
                )
              : LoginTextFiled(
                  hintText: texthintField,
                  suffixIcon: Icons.search,
                  keyboardtype: TextInputType.emailAddress,
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomElevatedButtom(
              text: textElevatedButton,
              onPressed: onpressed,
            ),
          ),
        ],
      ),
    );
  }
}
