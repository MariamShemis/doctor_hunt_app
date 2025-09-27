import 'package:doctor_hunt_app/core/utils/app_assets.dart';

class ModelOnboarding {
  final String image;
  final String text;
  final String textDiscription;
  final String rating;

  ModelOnboarding({
    required this.image,
    required this.text,
    required this.textDiscription,
    this.rating = "3.7",
  });

  static List<ModelOnboarding> model = [
    ModelOnboarding(
      image: AppAssets.boarding1,
      text: "Find Trusted Doctors",
      textDiscription:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
    ModelOnboarding(
      image: AppAssets.boarding2,
      text: "Choose Best Doctors",
      textDiscription:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
    ModelOnboarding(
      image: AppAssets.boarding3,
      text: "Easy Appointments",
      textDiscription:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
  ];
}
