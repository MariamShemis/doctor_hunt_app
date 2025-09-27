import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu_book, color: AppColors.green, size: 80),
              Text(
                "this is your books",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
