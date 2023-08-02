import 'dart:io';
import 'package:banking/screens/user/user_page/user/user.dart';
import 'package:banking/screens/user/user_page/user_menu/user_menu.dart';
import 'package:banking/screens/user/user_page/user_scan/user_scan.dart';
import 'package:banking/screens/user/user_page/user_transactions/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';
import '../../state/user_state.dart';

class UserPage extends StatefulWidget {
  const UserPage({
    Key? key,
  }) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> captureImage() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        UserState.bankingState.user[UserState.bankingState.userDataIndex]
            .photoFlag = true;
        _image = File(pickedFile.path);
        UserState.bankingState.user[UserState.bankingState.userDataIndex]
            .image = _image;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    UserState.bankingState.bankingStateIndex = 0;
    UserState.bankingState.screenIndex += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121418),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121418),
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserState.bankingState.user[UserState.bankingState.userDataIndex]
                    .photoFlag
                ? Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.file(
                        UserState.bankingState
                            .user[UserState.bankingState.userDataIndex].image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        captureImage();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF9DA1A7),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${UserState.bankingState.user[UserState.bankingState.userDataIndex].name} ${UserState.bankingState.user[UserState.bankingState.userDataIndex].surname}',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                // setState(() {
                //   widget.bankingState.user[widget.index].surname = 'Khachatryan';
                // });
              },
              icon: Image.asset(
                'images/icon_message.png',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
      body: Observer(
        builder: (context) {
          if (UserState.bankingState.bankingStateIndex == 0) {
            return UserTransactions();
          } else if (UserState.bankingState.bankingStateIndex == 1) {
            return UserMenu();
          } else if (UserState.bankingState.bankingStateIndex == 2) {
            return UserScan();
          } else if (UserState.bankingState.bankingStateIndex == 4) {
            return User();
          } else {
            return UserTransactions();
          }
        },
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
            backgroundColor: const Color(0xFF23262B),
            selectedItemColor: Colors.white10,
            unselectedItemColor: Colors.white,
            currentIndex: UserState.bankingState.bankingStateIndex,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Transform.translate(
                    offset: const Offset(0, 7),
                    child: Image.asset(
                      'images/homeA.png',
                      width: 20,
                      height: 20,
                      color: UserState.bankingState.bankingStateIndex == 0
                          ? Colors.white60
                          : Colors.white,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    'images/grid.png',
                    width: 20,
                    height: 20,
                    color: UserState.bankingState.bankingStateIndex == 1
                        ? Colors.white60
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Image.asset(
                    'images/scan.png',
                    width: 30,
                    height: 30,
                    color: UserState.bankingState.bankingStateIndex == 2
                        ? Colors.white60
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/undo.png',
                  width: 20,
                  height: 20,
                  color: UserState.bankingState.bankingStateIndex == 3
                      ? Colors.white60
                      : Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/user.png',
                  width: 20,
                  height: 20,
                  color: UserState.bankingState.bankingStateIndex == 4
                      ? Colors.white60
                      : Colors.white,
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              UserState.bankingState.checkScreen(index);
            },
          );
        },
      ),
    );
  }
}
