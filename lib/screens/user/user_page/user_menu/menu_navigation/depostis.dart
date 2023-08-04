import 'package:banking/screens/user/user_page/user_menu/menu_navigation/depostis_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../state/user_state.dart';

class Depostis extends StatefulWidget {
  const Depostis({super.key});

  @override
  State<Depostis> createState() => _DepostisState();
}

class _DepostisState extends State<Depostis> {
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
                'Deposits',
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
                left: 15.0,
              ),
              child: Text(
                'With the right to replenish',
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Up to 9.5%             Up to 60 Days             3000\$',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Interest Rate                       Terms                Minimal amount',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 226.0,
                    top: 12.0,
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
                      onPressed: () {},
                      child: const Text(
                        'Request',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DepostisInfo(),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
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
                left: 15.0,
              ),
              child: Text(
                'Demand Deposit',
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Up to 9.5%             Defined             15,000\$',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Interest Rate                Terms             Minimal amount',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 226.0,
                    top: 12.0,
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
                      onPressed: () {},
                      child: const Text(
                        'Request',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DepostisInfo(),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
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
                left: 15.0,
              ),
              child: Text(
                'Without the right to replenish',
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Up to 10,9%            Up to 1200 days             1000\$',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Interest Rate                           Terms                   Minimal amount',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 226.0,
                    top: 12.0,
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
                      onPressed: () {},
                      child: const Text(
                        'Request',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DepostisInfo(),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
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
