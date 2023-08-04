import 'package:banking/screens/models/user_data.dart';
import 'package:banking/screens/sign_in_screen/sign_in_page.dart';
import 'package:banking/screens/user/home_page.dart';
import 'package:flutter/material.dart';

import '../state/user_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'images/home.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const Positioned(
              left: 80,
              top: 120,
              child: Text(
                'Simple way\nto help to\ncontrol your\nsavings',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 40,
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              right: 20,
              child: Container(
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 0.5,
                    color: const Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    if (UserState.bankingState.isChecked) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SignInPage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Get Started!',
                    style: TextStyle(
                      color: Color(0xFFF2BE22),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
