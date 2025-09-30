import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddMedicineOrders extends StatelessWidget {
  AddMedicineOrders({super.key});
  List<IconData> icons = [
    Icons.gradient_outlined,
    Icons.upload_file_sharp,
    Icons.store_mall_directory,
    Icons.delivery_dining_rounded,
    Icons.credit_card_outlined,
    Icons.outbound_sharp,
  ];
  List<String> text = [
    "Guide to medicine order",
    "Prescription related issues",
    "Order status",
    "Order delivery",
    "Payments & Refunds",
    "Order returns",
  ];

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
                    Text("Medicine Orders", style: AppStyles.medium18black),
                  ],
                ),
                CustomTextField(text: "Search"),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      //childAspectRatio: .60,
                      mainAxisExtent: 189,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: AppColors.black.withValues(alpha: 0.3),
                          ),
                        ],
                      ),
                      child: Column(
                        spacing: 18,
                        children: [
                          Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.green.withValues(alpha: 0.3),
                            ),
                            child: Icon(
                              icons[index],
                              size: 40,
                              color: AppColors.green,
                            ),
                          ),
                          Text(
                            text[index],
                            textAlign: TextAlign.center,
                            style: AppStyles.medium18black.copyWith(
                              fontSize: 14,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
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
