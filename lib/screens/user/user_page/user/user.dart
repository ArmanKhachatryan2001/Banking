import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121418),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
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
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Settings',
              style: TextStyle(
                color: Color(0xFFFFEA7B),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Container(
              width: 300,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/bells.png',
                  width: 45,
                  height: 45,
                  color: const Color(0xFFFFEA7B),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  left: 2.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notlifications',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Transaction and marketing management',
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Color(0xFF858585),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/lock.png',
                  width: 45,
                  height: 45,
                  color: const Color(0xFFFFEA7B),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  left: 2.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login & authorization',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'PIN code, Password managment',
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 52,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Color(0xFF858585),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Container(
              width: 300,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 23,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/translate.png',
                  width: 45,
                  height: 45,
                  color: const Color(0xFFFFEA7B),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 14.0,
                  left: 7.0,
                ),
                child: Text(
                  'Language',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  left: 111.0,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'English',
                    style: TextStyle(
                      color: Color(0xFF686C71),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Container(
              width: 339,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Contact us',
              style: TextStyle(
                color: Color(0xFFDFE5EE),
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/contact.png',
                  width: 45,
                  height: 45,
                  color: const Color(0xFFFFEA7B),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  left: 2.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'TPhone, email, Messenger',
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 86,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Color(0xFF858585),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/globe.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  left: 2.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Addresses',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Branches, terminals, ATMs',
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 86,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Color(0xFF858585),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27.0),
            child: Container(
              width: 304,
              height: 0.5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 125,
            ),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.logout,
                    size: 25,
                    color: Color(0xFFFFEA7B),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 2.0,
            ),
            child: Center(
              child: Container(
                width: 150,
                height: 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xFF646A73),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
