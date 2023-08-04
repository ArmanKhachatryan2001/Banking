import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../state/user_state.dart';

class DepostisInfo extends StatefulWidget {
  const DepostisInfo({super.key});

  @override
  State<DepostisInfo> createState() => _DepostisInfoState();
}

class _DepostisInfoState extends State<DepostisInfo> {
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
                'Demand Deposit',
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
                height: 3,
                decoration: BoxDecoration(
                  color: const Color(0xFF646A73),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,),
              child: SizedBox(
                width: 330,
                height: 200,
                child: Image.asset(
                  'images/depositImage.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Interest rate',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'to 0.05%',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Terms',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Terms',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Minimal amount',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '225 \$ Month',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
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
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 58.0,),
              child: SizedBox(
                width: 260,
                height: 100,
                child: Text(
                  'Get "Demand" non-term deposit, the interest'
                      ' rate of which is calculated on the daily'
                      ' balance of the deposit Open a deposit and '
                      'get free Mastercard Standard or Mastercard'
                      ' Gold plastic cards.',
                  style: TextStyle(
                    color: Color(0xFFDFE5EE),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
              ),
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
