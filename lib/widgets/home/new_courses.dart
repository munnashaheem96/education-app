import 'package:flutter/material.dart';

class NewCourses extends StatefulWidget {
  const NewCourses({super.key});

  @override
  _NewCoursesState createState() => _NewCoursesState();
}

class _NewCoursesState extends State<NewCourses> {
  final ScrollController _scrollController = ScrollController();

  // Function to move the scroll position to the right
  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 200, // Adjust scroll speed
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Function to move the scroll position to the left
  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 200, // Adjust scroll speed
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New courses',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _scrollLeft,
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: _scrollRight,
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController, // Assign the controller
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: const [
                  CourseTiles(
                    courseName: 'Design',
                    numOfCourses: '17 courses',
                    imagePath: 'assets/images/design.png',
                  ),
                  SizedBox(width: 10),
                  CourseTiles(
                    courseName: 'Programming',
                    numOfCourses: '10 courses',
                    imagePath: 'assets/images/programming.png',
                  ),
                  SizedBox(width: 10),
                  CourseTiles(
                    courseName: 'Math',
                    numOfCourses: '8 courses',
                    imagePath: 'assets/images/maths.png',
                  ),
                  SizedBox(width: 10),
                  CourseTiles(
                    courseName: 'Science',
                    numOfCourses: '12 courses',
                    imagePath: 'assets/images/science.png',
                  ),
                  SizedBox(width: 10),
                  CourseTiles(
                    courseName: 'General Studies',
                    numOfCourses: '50 courses',
                    imagePath: 'assets/images/general.webp',
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseTiles extends StatelessWidget {
  final String courseName;
  final String numOfCourses;
  final String imagePath;

  const CourseTiles({
    super.key,
    required this.courseName,
    required this.numOfCourses,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16)
        ),
        color: Colors.blue,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  numOfCourses,
                  style: const TextStyle(
                    color: Color.fromARGB(140, 255, 255, 255),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: SizedBox(
              width: 200, // Ensures image fits inside the container
              height: 200, // Adjusted to maintain proportions
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Prevents overflow
              ),
            ),
          ),
        ],
      ),
    );
  }
}
