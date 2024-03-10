import 'package:client/constants/color_constant.dart';
import 'package:client/constants/image_constant.dart';
import 'package:client/screens/categories_screen.dart';
import 'package:client/screens/home_screen.dart';
import 'package:client/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainLandingScreen extends StatefulWidget {
  const MainLandingScreen({super.key});

  @override
  State<MainLandingScreen> createState() => _MainLandingScreenState();
}

class _MainLandingScreenState extends State<MainLandingScreen> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: AppColor.myntraMainColor,
        selectedLabelStyle:
            const TextStyle(fontSize: 14, color: AppColor.myntraMainColor),
        items: [
          _bottomNavaigationBar(
              imageUrl: ImageConstant.logoBlack, title: "Home",index: 0,currentIndex: currentIndex),
          _bottomNavaigationBar(
              imageUrl: ImageConstant.category, title: "Category",index: 1,currentIndex: currentIndex),
          _bottomNavaigationBar(
              imageUrl: ImageConstant.profile, title: "Profile",index: 2,currentIndex: currentIndex)
        ],
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavaigationBar(
    {String? imageUrl, String? title,int? currentIndex,int? index}) {
  return BottomNavigationBarItem(
      icon: Image.asset(
        imageUrl!,
        height: 35,
        width: 25,
        color: index == currentIndex ? AppColor.myntraMainColor: AppColor.blackColor,
      ),
      label: title);
}
