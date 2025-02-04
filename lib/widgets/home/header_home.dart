import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  fit: BoxFit.cover,
                  width: 55,
                  height: 55,
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alan Williams',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  const Text(
                    'Student',
                    style: TextStyle(
                      color: Color.fromARGB(117, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Iconsax.search_normal_1,
                color: Colors.white,
              ),
              SizedBox(width: 15),
              Icon(
                Iconsax.notification,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
