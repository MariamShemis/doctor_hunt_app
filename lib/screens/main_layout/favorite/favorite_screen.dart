import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt_app/core/widgets/feature_doctor_list_view.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/widgets/custom_gird_view.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isLiked = false;
  List<ModelOnboarding> model1 = [
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor1.png",
      text: "Dr. Shouey",
      textDiscription: "Specalist Cardiology",
    ),
    ModelOnboarding(
      image: "assets/images/popular_doctor1.png",
      text: "Dr. Christenfeld N",
      textDiscription: "Specalist Cancer",
    ),
    ModelOnboarding(
      image: "assets/images/popular_doctor2.png",
      text: "Dr. Shouey",
      textDiscription: "Specalist Medicine ",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor3.png",
      text: "Dr. Shouey",
      textDiscription: "Specalist Dentist",
    ),
  ];
  List<ModelOnboarding> model2 = [
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor1.png",
      text: "Dr. Crick",
      textDiscription: "25.00/ hours",
      rating: "3.7",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor2.png",
      text: "Dr. Strain",
      textDiscription: "22.00/ hours",
      rating: "3.0",
    ),
    ModelOnboarding(
      image: "assets/images/profile_feature_doctor3.png",
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "2.9",
    ),
    ModelOnboarding(
      image: "assets/images/category_doctor1.png",
      text: "Dr. Lachinet",
      textDiscription: "29.00/ hours",
      rating: "2.9",
    ),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Favourite Doctors", style: AppStyles.medium18black),
                  SizedBox(height: 30),
                  CustomTextField(text: "Dentist"),
                  SizedBox(height: 20),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          //childAspectRatio: .60,
                          mainAxisExtent: 180,
                        ),
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        CustomGirdView(model: model1[index]),
                  ),
                  SizedBox(height: 33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature Doctor", style: AppStyles.medium18black),
                      TextButton(
                        onPressed: () {},
                        child: Text("See all >", style: AppStyles.light12grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200, //MediaQuery.sizeOf(context).height * 0.5,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10, height: 10),
                      itemBuilder: (context, index) =>
                          FeatureDoctorListView(model: model2[index]),
                      itemCount: model2.length,
                      scrollDirection: Axis.horizontal,
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
}
