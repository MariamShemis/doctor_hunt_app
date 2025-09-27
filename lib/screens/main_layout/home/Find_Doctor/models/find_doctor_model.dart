class FindDoctorModel {
  final int id;
  final String name;
  final String specialty;
  final String experience;
  final int rating;
  final int patientStories;
  final String nextAvailable;
  final String image;
  bool isFavorite;

  FindDoctorModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.experience,
    required this.rating,
    required this.patientStories,
    required this.nextAvailable,
    required this.image,
    required this.isFavorite,
  });
}
