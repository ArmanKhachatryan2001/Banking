import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../state/user_state.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
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
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 60.0,
              ),
              child: SizedBox(
                width: 260,
                height: 170,
                child: Text(
                  'In a fast-moving and increasingly'
                  ' complex global economy, our'
                  ' success depends onhow faithfully'
                  ' we adhere to our core principles:'
                  ' delivering exceptional client service,'
                  ' acting with integrity and responsibility'
                  ' and supporting the growth of our employees.',
                  style: TextStyle(
                    color: Color(0xFFDFE5EE),
                    fontSize: 16,
                  ),
                ),
              ),
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
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.4,
                  ),
                  child: SizedBox(
                    width: 157,
                    height: 157,
                    child: Image.asset(
                      'images/aboutUs1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: SizedBox(
                    width: 157,
                    height: 157,
                    child: Image.asset(
                      'images/aboutUs2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.4,
                  ),
                  child: SizedBox(
                    width: 157,
                    height: 157,
                    child: Image.asset(
                      'images/aboutUs3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: SizedBox(
                    width: 157,
                    height: 157,
                    child: Image.asset(
                      'images/aboutUs4.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 150,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(3),
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
