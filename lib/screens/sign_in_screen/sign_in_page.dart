import 'package:banking/state/banking_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SignInPage extends StatefulWidget {
  final BankingState bankingState;

  const SignInPage({
    Key? key,
    required this.bankingState,
  }) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFFF2BE22),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'images/A_S.png',
                width: 300,
              ),
              const SizedBox(
                height: 60,
              ),
              Stack(
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF9DA2A7),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: TextFormField(
                        controller: loginController,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFF646A73),
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Login or Email...',
                          hintStyle: TextStyle(
                            color: Color(0xFF646A73),
                          ),
                        ),
                        // onChanged: (value) {
                        //   // Print the user input login
                        //   print('User Input Login: $value');
                        // },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF9DA2A7),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        style: const TextStyle(
                          color: Color(0xFF646A73),
                          fontSize: 18,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password...',
                          hintStyle: TextStyle(
                            color: Color(0xFF646A73),
                          ),
                        ),
                        // onChanged: (value) {
                        //   // Print the user input login
                        //   print('User Input Login: $value');
                        // },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 55,
                  ),
                  Observer(
                    builder: (_) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {

                            },
                            child: Icon(
                              widget.bankingState.isChecked ?
                              Icons.check_box :
                              Icons.check_box_outline_blank_sharp,
                              size: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'I Agree',
                            style: TextStyle(
                              color: Color(0xFFDFE5EE),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            width: 85,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Color(0xFF2E5CE5),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 280,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 0.5,
                    color: const Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xFFDFE5EE),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 0.5,
                    color: const Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Registration',
                    style: TextStyle(
                      color: Color(0xFFDFE5EE),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
