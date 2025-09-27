import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/screens/main_layout/Books/books_screen.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/favorite_screen.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/home.dart';
import 'package:doctor_hunt_app/screens/main_layout/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<Widget> tabs = [
    Home(),
    FavoriteScreen(),
    BooksScreen(),
    ProfileScreen(),
  ];

  int selectedIndexTab = 0;
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
        bottomNavigationBar: _buildBottomNavBar(),
        body: tabs[selectedIndexTab],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndexTab,
      onTap: _onTab,

      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(icon: Icons.home, isSelected: selectedIndexTab == 0),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
            icon: Icons.favorite,
            isSelected: selectedIndexTab == 1,
          ),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
            icon: Icons.menu_book_rounded,
            isSelected: selectedIndexTab == 2,
          ),
          label: "Books",
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
            icon: Icons.person,
            isSelected: selectedIndexTab == 3,
          ),
          label: "Profile",
        ),
      ],
    );
  }

  Widget _buildIcon({required IconData icon, required bool isSelected}) {
    return isSelected
        ? Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(60),
              //shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.white),
          )
        : Icon(icon, color: AppColors.grey);
  }

  void _onTab(int newIndex) {
    setState(() {
      selectedIndexTab = newIndex;
    });
  }
}
