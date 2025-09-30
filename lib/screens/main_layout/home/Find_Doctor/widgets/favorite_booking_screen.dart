import 'package:doctor_hunt_app/screens/main_layout/home/Find_Doctor/models/find_doctor_model.dart';
import 'package:flutter/material.dart';

// صفحة المفضلة
class FavoriteScreen extends StatelessWidget {
  final FindDoctorModel doctor;

  FavoriteScreen({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FFFE),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8FFFE),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Favorite Doctors",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
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
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(doctor.image),
                        fit: BoxFit.cover,
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
                                ),
                              ),
                            ),
                            Icon(Icons.favorite, color: Colors.red, size: 24),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          doctor.specialty,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0EBE7F),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          doctor.experience,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Added to your favorites!",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF0EBE7F),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
