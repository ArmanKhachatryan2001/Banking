import 'package:banking/screens/sign_in_screen/sign_in_page.dart';
import 'package:banking/state/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
            Observer(
              builder: (_) {
                return Positioned(
                  bottom: 70,
                  right: 20,
                  child: Container(
                    width: 320,
                    decoration: UserState.bankingState.color != null
                        ? BoxDecoration(
                      color: UserState.bankingState.color,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xFFF2BE22),
                      ),
                    )
                        : BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        UserState.bankingState.changeButton(true);
                        Future.delayed(const Duration(milliseconds: 50), () {
                          UserState.bankingState.changeButton(false);
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignInPage(),
                          ),
                        );
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
