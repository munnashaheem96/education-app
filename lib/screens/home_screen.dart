import 'package:education_app/widgets/home/header_home.dart';
import 'package:education_app/widgets/home/new_courses.dart';
import 'package:education_app/widgets/home/ongoing_courses.dart';
import 'package:flutter/material.dart';

import '../widgets/home/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAA191919),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderHome(),
            const SizedBox(height: 30), // Adjust spacing as needed
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xAA202020),
                  ),
                  child: Column(
                    children: const [
                      NewCourses(),
                      SizedBox(height: 30),
                      OngoingCourses(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // Pass selectedIndex 0 to indicate the Home tab is selected by default
      bottomNavigationBar: BottomNavigation(selectedIndex: 0),
    );
  }
}
