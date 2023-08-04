import 'package:banking/screens/user/user_page/user_menu/menu_navigation/transfer_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../state/user_state.dart';

class Transfers extends StatefulWidget {
  const Transfers({super.key});

  @override
  State<Transfers> createState() => _TransfersState();
}

class _TransfersState extends State<Transfers> {
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
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Transfers',
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
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Money transfers from A & S Bank to J.P Morgan',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15.5,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/percentage.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/bank.png',
                      fit: BoxFit.fill,
                      color: Color(0xFFDFE5EE),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.5,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/alarm.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 10,
              ),
              child: Text(
                'Commission fee - 1%               60,000 \$ per month            Transfer period - 5 Minutes',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 260.0,
                top: 20,
              ),
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferInfo(),
                      ),
                    );
                  },
                  child: const Text(
                    'More...',
                    style: TextStyle(
                      color: Color(0xFFF2BE22),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Money transfers from A & S Bank USA',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15.5,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/percentage.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/bank.png',
                      fit: BoxFit.fill,
                      color: Color(0xFFDFE5EE),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.5,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/alarm.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 10,
              ),
              child: Text(
                'Commission fee - 5%               95,000 \$ per month            Transfer period - 24 Hours',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 260.0,
                top: 20,
              ),
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferInfo(),
                      ),
                    );
                  },
                  child: const Text(
                    'More...',
                    style: TextStyle(
                      color: Color(0xFFF2BE22),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Money transfers from A & S Bank to J.P Morgan',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15.5,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/percentage.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/bank.png',
                      fit: BoxFit.fill,
                      color: Color(0xFFDFE5EE),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.5,
                    left: 100.0,
                  ),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'images/alarm.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 10,
              ),
              child: Text(
                'Commission fee - 0.5%   Maximum amount 100,000\$            Transfer period - 10m',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 260.0,
                top: 20,
              ),
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF2BE22),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferInfo(),
                      ),
                    );
                  },
                  child: const Text(
                    'More...',
                    style: TextStyle(
                      color: Color(0xFFF2BE22),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
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
