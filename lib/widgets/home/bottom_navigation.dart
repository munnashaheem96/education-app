import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex;

  const BottomNavigation({super.key, required this.selectedIndex});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // Set initial selected index from the widget's selectedIndex
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Set your preferred height for the navigation bar
      decoration: const BoxDecoration(
        color: Color(0xAA202020),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(Iconsax.home, 'Home', 0),
            _buildNavItem(Iconsax.category_2, 'Courses', 1),
            _buildNavItem(Iconsax.bookmark, 'Favorites', 2),
            _buildNavItem(Iconsax.search_normal_1, 'Search', 3),
            _buildNavItem(Iconsax.setting, 'Settings', 4),
          ],
        ),
      ),
    );
  }

  // Helper method to build each navigation item
  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;

    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
          onPressed: () => _onItemTapped(index),
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    );
  }
}
