import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profiles_screens/all_records_medical.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/widgets/report_records_inkwell.dart';
import 'package:flutter/material.dart';

class AddRecordsMedical extends StatefulWidget {
  const AddRecordsMedical({super.key});

  @override
  State<AddRecordsMedical> createState() => _AddRecordsMedicalState();
}

class _AddRecordsMedicalState extends State<AddRecordsMedical> {
  bool isSelected = false;
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
          spacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 16,
              ),
              child: SafeArea(
                child: Row(
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
                    Text("Add Records", style: AppStyles.medium18black),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.green.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: AppColors.green,
                              size: 50,
                            ),
                          ),
                          Text(
                            "Add more \n images",
                            style: AppStyles.regular14grey.copyWith(
                              color: AppColors.green,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      spacing: 5,
                      children: [
                        Image.asset(
                          "assets/images/patient1.png",
                          fit: BoxFit.fill,
                        ),
                        Text("My Self", style: AppStyles.regular14grey),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      spacing: 5,
                      children: [
                        Image.asset(
                          "assets/images/patient2.png",
                          fit: BoxFit.fill,
                        ),
                        Text("My Child", style: AppStyles.regular14grey),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      spacing: 5,
                      children: [
                        Image.asset(
                          "assets/images/patient1.png",
                          fit: BoxFit.fill,
                        ),
                        Text("My Self", style: AppStyles.regular14grey),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.55,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withValues(alpha: 0.3),
                  ),
                ],
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Record for", style: AppStyles.medium18black),
                            TextField(
                              style: AppStyles.medium18black.copyWith(
                                color: AppColors.green,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Add YourName",
                                hintStyle: AppStyles.medium18black.copyWith(
                                  color: AppColors.green,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: AppColors.grey.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: AppColors.grey.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    ],
                  ),
                  Text("Type of record", style: AppStyles.medium18black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportRecordsInkwell(
                        isSelected: isSelected,
                        text: "Report",
                        icons: Icons.restore_page_outlined,
                      ),
                      ReportRecordsInkwell(
                        isSelected: isSelected,
                        text: "Prescription",
                        icons: Icons.file_present_rounded,
                      ),
                      ReportRecordsInkwell(
                        isSelected: isSelected,
                        text: "Invoice",
                        icons: Icons.receipt,
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Record created on",
                              style: AppStyles.medium18black,
                            ),
                            TextField(
                              style: AppStyles.medium18black.copyWith(
                                color: AppColors.green,
                              ),
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                hintText: "Add Your Date",
                                hintStyle: AppStyles.medium18black.copyWith(
                                  color: AppColors.green,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: AppColors.grey.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: AppColors.grey.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 40,
                    ),
                    child: CustomElevatedButtom(
                      text: "Upload Record ",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllRecordsMedical(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
