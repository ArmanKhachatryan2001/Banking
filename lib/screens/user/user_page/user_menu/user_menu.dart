import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_navigation/cards.dart';

class UserMenu extends StatefulWidget {
  const UserMenu({super.key});

  @override
  State<UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121418),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFF646A73),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cards(),
                ),
              );
            },
            child: const Text(
              'Cards',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Credits',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Transfer',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Depostis',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Customers',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'About Us',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'News',
              style: TextStyle(
                color: Color(0xFFF2BE22),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 330,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFF646A73),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }
}
