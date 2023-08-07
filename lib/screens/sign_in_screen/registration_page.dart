import 'package:banking/screens/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../state/user_state.dart';
import 'flag_page.dart';

class Registration extends StatefulWidget {

  const Registration({
    Key? key,
  }) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _login = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _surname = TextEditingController();
  final _email = TextEditingController();
  final _number = TextEditingController();

  // bool flag = false;

  bool checkData() {
    if (_login.text.isEmpty ||
        _password.text.isEmpty ||
        _name.text.isEmpty ||
        _surname.text.isEmpty ||
        _email.text.isEmpty ||
        _number.text.isEmpty) {
      UserState.bankingState.checkData = false;
    } else {
      UserState.bankingState.checkData = true;
    }
    return UserState.bankingState.checkData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Regisration',
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
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Observer(builder: (context) {
                        return TextFormField(
                          controller: _login,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Login...',
                            hintStyle: TextStyle(
                              color: UserState.bankingState.checkData
                                  ? const Color(0xFF646A73)
                                  : Colors.red,
                            ),
                          ),
                        );
                      }),
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
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Observer(builder: (context) {
                        return TextFormField(
                          controller: _password,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password...',
                            hintStyle: TextStyle(
                              color: UserState.bankingState.checkData
                                  ? const Color(0xFF646A73)
                                  : Colors.red,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 0.5,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Observer(builder: (context) {
                              return TextFormField(
                                controller: _name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name...',
                                  hintStyle: TextStyle(
                                    color: UserState.bankingState.checkData
                                        ? const Color(0xFF646A73)
                                        : Colors.red,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 162,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 0.5,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Observer(builder: (context) {
                              return TextFormField(
                                controller: _surname,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Surname...',
                                  hintStyle: TextStyle(
                                    color: UserState.bankingState.checkData
                                        ? const Color(0xFF646A73)
                                        : Colors.red,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
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
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Observer(builder: (context) {
                        return TextFormField(
                          controller: _email,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email...',
                            hintStyle: TextStyle(
                              color: UserState.bankingState.checkData
                                  ? const Color(0xFF646A73)
                                  : Colors.red,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Observer(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return FlagPage(
                                bankingState: UserState.bankingState,
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                ),
                                child: Image.asset(
                                  UserState.bankingState.flagImage,
                                  width: 25,
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  UserState.bankingState.flagImageCode,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 192,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Observer(builder: (context) {
                              return TextFormField(
                                controller: _number,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your number...',
                                  hintStyle: TextStyle(
                                    color: UserState.bankingState.checkData
                                        ? const Color(0xFF646A73)
                                        : Colors.red,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    if (checkData()) {
                      UserData userInfo = UserData(
                        login: _login.text,
                        password: _password.text,
                        name: _name.text,
                        surname: _surname.text,
                        email: _email.text,
                        number:
                        UserState.bankingState.flagImageCode + _number.text,
                      );
                      UserState.bankingState.user.add(userInfo);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 320,
                height: 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xFF646A73),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 40,
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
