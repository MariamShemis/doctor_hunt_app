import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/Find_Doctor/models/find_doctor_model.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/Find_Doctor/widgets/booking_screen.dart';
import 'package:flutter/material.dart';

class MyDoctorsProfile extends StatefulWidget {
  const MyDoctorsProfile({super.key});

  @override
  State<MyDoctorsProfile> createState() => _MyDoctorsProfileState();
}

class _MyDoctorsProfileState extends State<MyDoctorsProfile> {
  final TextEditingController _searchController = TextEditingController();
  List<FindDoctorModel> filteredDoctors = [];
  final List<FindDoctorModel> allDoctors = [
    FindDoctorModel(
      id: 1,
      name: "Dr. Shruti Kedia",
      specialty: "Tooths Dentist",
      experience: "7 Years experience",
      rating: 87,
      patientStories: 69,
      nextAvailable: "10:00 AM tomorrow",
      image: HomeAssets.findDr1,
      isFavorite: true,
    ),
    FindDoctorModel(
      id: 2,
      name: "Dr. Watamaniuk",
      specialty: "Tooths Dentist",
      experience: "9 Years experience",
      rating: 74,
      patientStories: 78,
      nextAvailable: "12:00 AM tomorrow",
      image: HomeAssets.findDr2,
      isFavorite: false,
    ),
    FindDoctorModel(
      id: 3,
      name: "Dr. Sarah Johnson",
      specialty: "Tooths Dentist",
      experience: "12 Years experience",
      rating: 92,
      patientStories: 156,
      nextAvailable: "02:00 PM tomorrow",
      image: HomeAssets.findDr3,
      isFavorite: false,
    ),
    FindDoctorModel(
      id: 4,
      name: "Dr. Ahmed Hassan",
      specialty: "Tooths Dentist",
      experience: "8 Years experience",
      rating: 89,
      patientStories: 124,
      nextAvailable: "04:30 PM tomorrow",
      image: HomeAssets.findDr4,
      isFavorite: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _searchController.text = "Dentist";
    _filterDoctors("Dentist");
  }

  void _filterDoctors(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredDoctors = allDoctors;
      } else {
        filteredDoctors = allDoctors
            .where(
              (doctor) =>
                  doctor.name.toLowerCase().contains(query.toLowerCase()) ||
                  doctor.specialty.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      }
    });
  }

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                    Text("My Doctors", style: AppStyles.medium18black),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: _filterDoctors,
                  decoration: InputDecoration(
                    hintText: "Dentist",
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
                      size: 24,
                    ),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.grey[400],
                              size: 20,
                            ),
                            onPressed: () {
                              _searchController.clear();
                              _filterDoctors("");
                            },
                          )
                        : null,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: filteredDoctors.length,
                  itemBuilder: (context, index) {
                    final doctor = filteredDoctors[index];
                    return _buildDoctorCard(doctor);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorCard(FindDoctorModel doctor) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(doctor.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            doctor.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              doctor.isFavorite = !doctor.isFavorite;
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  doctor.isFavorite
                                      ? "Added ${doctor.name} to favorites"
                                      : "Removed ${doctor.name} from favorites",
                                ),
                                backgroundColor: doctor.isFavorite
                                    ? Color(0xFF0EBE7F)
                                    : Colors.grey,
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          child: Icon(
                            doctor.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: doctor.isFavorite ? Colors.red : Colors.grey,
                            size: 24,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 4),

                    Text(
                      doctor.specialty,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0EBE7F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      doctor.experience,
                      style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    ),

                    SizedBox(height: 12),

                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color(0xFF0EBE7F),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "${doctor.rating}%",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 20),

                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color(0xFF0EBE7F),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "${doctor.patientStories} Patient Stories",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Available",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0EBE7F),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      doctor.nextAvailable,
                      style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  // Navigation لصفحة الحجز
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingScreen(doctor: doctor),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0xFF0EBE7F),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
