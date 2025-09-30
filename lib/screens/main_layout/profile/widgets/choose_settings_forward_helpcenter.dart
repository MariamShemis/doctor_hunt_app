import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ChooseSettingsForwardHelpcenter extends StatelessWidget {
  const ChooseSettingsForwardHelpcenter({
    super.key,
    required this.text,
    required this.onpressed,
    this.isIconLeft = false,
    this.iconLeft,
    this.colorContainer,
    this.isTextIconRight = false,
    this.textIcon = "",
  });
  final String text;
  final String textIcon;
  final VoidCallback onpressed;
  final bool isIconLeft;
  final IconData? iconLeft;
  final Color? colorContainer;
  final bool isTextIconRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Visibility(
          visible: isIconLeft,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: colorContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(iconLeft, color: AppColors.white, size: 30),
          ),
        ),
        Text(text, style: AppStyles.light12grey.copyWith(fontSize: 18)),
        Spacer(),

        isTextIconRight
            ? Row(
                children: [
                  Text(textIcon, style: AppStyles.light12grey),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: AppColors.grey,
                  ),
                ],
              )
            : IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: AppColors.grey,
                ),
              ),
      ],
    );
  }
}
