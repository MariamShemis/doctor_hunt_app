import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/add_records_medical.dart';
import 'package:flutter/material.dart';

class MedicalRecordsProfile extends StatelessWidget {
  const MedicalRecordsProfile({super.key});

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
                    Text("Medical Records", style: AppStyles.medium18black),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.green.withValues(alpha: 0.3),
                  ),
                  child: Image.asset("assets/images/empty_medical_record.png"),
                ),
                Text(
                  "Add a medical record.",
                  textAlign: TextAlign.center,
                  style: AppStyles.bold25white.copyWith(
                    fontSize: 22,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "A detailed health history helps a doctor diagnose you btter.",
                  style: AppStyles.regular14grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: CustomElevatedButtom(
                    text: "Add a record",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddRecordsMedical(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
