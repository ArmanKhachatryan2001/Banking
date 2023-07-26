import 'package:banking/screens/sign_in_screen/sign_in_page.dart';
import 'package:banking/state/banking_state.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BankingState _bankingState = BankingState();

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
                decoration: _bankingState.color != null
                    ? BoxDecoration(
                        color: _bankingState.color,
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
                    _bankingState.changeButton(true);
                    Future.delayed(const Duration(milliseconds: 300), () {
                      _bankingState.changeButton(false);
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(
                          bankingState: _bankingState,
                        ),
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
            ),
            // Positioned(
            //   bottom: 10,
            //   right: 105,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: Container(
            //       width: 150,
            //       height: 3,
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFF2BE22),
            //         borderRadius: BorderRadius.circular(2)
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
