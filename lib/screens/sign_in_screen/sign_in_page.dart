import 'package:banking/screens/sign_in_screen/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../state/user_state.dart';
import '../user/home_page.dart';

class SignInPage extends StatefulWidget {

  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  bool signInCheck() {
    int index = 0;
    for (final user in UserState.bankingState.user) {
      if (loginController.text == user.login) {
        if (passwordController.text == user.password) {
          UserState.bankingState.userDataIndex = index;
          UserState.bankingState.signInCheck = true;
          return true;
        }
      }
      ++index;
    }
    UserState.bankingState.signInCheck = false;
    return false;
  }

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
                  color: const Color(0xFF646A73),
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
                  Observer(builder: (context) {
                    return Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: UserState.bankingState.signInCheck
                              ? const Color(0xFF9DA2A7)
                              : Colors.red,
                        ),
                      ),
                    );
                  }),
                  Positioned.fill(
                    child: Observer(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: TextFormField(
                          controller: loginController,
                          style: TextStyle(
                            fontSize: 18,
                            color: UserState.bankingState.signInCheck
                                ? const Color(0xFF646A73)
                                : Colors.red,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Login...',
                            hintStyle: TextStyle(
                              color: UserState.bankingState.signInCheck
                                  ? const Color(0xFF646A73)
                                  : Colors.red,
                            ),
                          ),
                          onChanged: (value) {
                            UserState.bankingState.signInCheck = true;
                          },
                        ),
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Observer(builder: (context) {
                    return Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: UserState.bankingState.signInCheck
                              ? const Color(0xFF9DA2A7)
                              : Colors.red,
                        ),
                      ),
                    );
                  }),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Observer(builder: (context) {
                        return TextFormField(
                          controller: passwordController,
                          style: TextStyle(
                            color: UserState.bankingState.signInCheck
                                ? const Color(0xFF646A73)
                                : Colors.red,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                UserState.bankingState.eyeChecked();
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: 'Password...',
                            hintStyle: TextStyle(
                              color: UserState.bankingState.signInCheck
                                  ? const Color(0xFF646A73)
                                  : Colors.red,
                            ),
                          ),
                          obscureText: UserState.bankingState.eyeFlag,
                          onChanged: (value) {
                            UserState.bankingState.signInCheck = true;
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Observer(builder: (context) {
                return Container(
                  child: UserState.bankingState.signInCheck
                      ? null
                      : const Padding(
                          padding: EdgeInsets.only(right: 58.0),
                          child: Text(
                            "The login or password you've entered is incorrect.",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                );
              }),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Observer(
                    builder: (_) {
                      return Row(
                        children: [
                          Transform.scale(
                            scale: 0.8,
                            child: Checkbox(
                              value: UserState.bankingState.isChecked,
                              activeColor: const Color(0xFFF2BE22),
                              onChanged: (newValue) {
                                UserState.bankingState.check(newValue ?? false);
                              },
                            ),
                          ),
                          const Text(
                            'I Agree',
                            style: TextStyle(
                              color: Color(0xFFDFE5EE),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            width: 75,
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
                  onPressed: () {
                    if (signInCheck()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(),
                        ),
                      ).then((_) {
                        loginController.clear();
                        passwordController.clear();
                      });
                    }
                  },
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
                  onPressed: () {
                    loginController.clear();
                    passwordController.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registration(),
                      ),
                    );
                    // for (final us in widget.bankingState.user) {
                    //   print(us.login.runtimeType);
                    // }
                  },
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
                height: 30,
              ),
              Container(
                width: 325,
                height: 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xFF646A73),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 150,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
