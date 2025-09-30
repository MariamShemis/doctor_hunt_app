import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:flutter/material.dart';

class AllRecordsMedical extends StatefulWidget {
  const AllRecordsMedical({super.key});

  @override
  State<AllRecordsMedical> createState() => _AllRecordsMedicalState();
}

class _AllRecordsMedicalState extends State<AllRecordsMedical> {
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
                    Text("All Records", style: AppStyles.medium18black),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: AppColors.black.withValues(alpha: 0.4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Column(
                        spacing: 10,

                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              " 27 \nFEB",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 14,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.green.withValues(alpha: 0.3),
                            ),
                            child: Text(
                              "New",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                                color: AppColors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Records added by you",
                            style: AppStyles.medium18black.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Record for Abdullah mamun",
                            style: AppStyles.light12grey.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          Text("1 Prescription", style: AppStyles.light12grey),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: AppColors.black.withValues(alpha: 0.4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Column(
                        spacing: 10,

                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              " 28 \nFEB",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 14,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.green.withValues(alpha: 0.3),
                            ),
                            child: Text(
                              "New",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                                color: AppColors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Records added by you",
                            style: AppStyles.medium18black.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Record for Abdullah shuvo",
                            style: AppStyles.light12grey.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          Text("1 Prescription", style: AppStyles.light12grey),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: AppColors.black.withValues(alpha: 0.4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Column(
                        spacing: 10,

                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              " 01 \nMAR",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 14,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.green.withValues(alpha: 0.3),
                            ),
                            child: Text(
                              "New",
                              style: AppStyles.medium18white.copyWith(
                                fontSize: 14,
                                color: AppColors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Records added by you",
                            style: AppStyles.medium18black.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Record for Shruti Kedia",
                            style: AppStyles.light12grey.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          Text("1 Prescription", style: AppStyles.light12grey),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  child: CustomElevatedButtom(
                    text: "Add a record",
                    onPressed: _addRecord,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _addRecord() {
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: AppColors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Text(
                  "Add a Record",
                  style: AppStyles.medium28black.copyWith(fontSize: 22),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: AppColors.grey,
                      ),
                      Text(
                        "Add a Record",
                        style: AppStyles.regular14grey.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.photo, size: 20, color: AppColors.grey),
                      Text(
                        "Upload from gallery",
                        style: AppStyles.regular14grey.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Row(
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.file_present_rounded,
                        size: 20,
                        color: AppColors.grey,
                      ),
                      Text(
                        "Upload files",
                        style: AppStyles.regular14grey.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
