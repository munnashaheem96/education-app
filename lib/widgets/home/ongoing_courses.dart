import 'package:flutter/material.dart';

class OngoingCourses extends StatelessWidget {
  const OngoingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Continue Learning',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            OngoingTiles(
              progress: 70,
              courseTitle: 'Python for Beginners',
              lessonCount: '12',
              courseLogo: 'assets/images/python.png',
            ),
            SizedBox(height: 20),
            OngoingTiles(
              progress: 90,
              courseTitle: 'HTML 5',
              lessonCount: '17',
              courseLogo: 'assets/images/html5.png',
            ),
            SizedBox(height: 20),
            OngoingTiles(
              progress: 1,
              courseTitle: 'C++ Backend',
              lessonCount: '8',
              courseLogo: 'assets/images/cpp.png',
            ),
            SizedBox(height: 20),
            OngoingTiles(
              progress: 25,
              courseTitle: 'Basic CSS',
              lessonCount: '10',
              courseLogo: 'assets/images/css3.png',
            ),
            SizedBox(height: 20),
            OngoingTiles(
              progress: 50,
              courseTitle: 'Photoshop Basics',
              lessonCount: '15',
              courseLogo: 'assets/images/psd.png',
            ),
          ],
        ),
      ),
    );
  }
}

class OngoingTiles extends StatelessWidget {
  final int progress;
  final String courseTitle;
  final String lessonCount;
  final String courseLogo;

  const OngoingTiles({
    super.key,
    required this.progress,
    required this.courseTitle,
    required this.lessonCount,
    required this.courseLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Course Logo
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(232, 32, 32, 32),
          ),
          child: Center(
            child: Image.asset(
              courseLogo,
              width: 80,
              height: 80,
            ),
          ),
        ),
        const SizedBox(width: 10), // Spacing between logo and text

        // Course Title and Progress
        SizedBox(
          height: 100,
          width: 270,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 0,
                child: Text(
                  courseTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$progress% complete',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    LinearProgressIndicator(
                      value: progress / 100.0, // Convert 0-100 to 0.0-1.0
                      backgroundColor: const Color.fromARGB(232, 32, 32, 32),
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      minHeight: 4, // Progress bar thickness
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(232, 32, 32, 32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      '$lessonCount lessons',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
