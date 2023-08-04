import 'package:banking/screens/user/user_page/user_menu/menu_navigation/credits_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../state/user_state.dart';

class Credits extends StatefulWidget {
  const Credits({super.key});

  @override
  State<Credits> createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
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
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Credits',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 25,
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
                left: 15.0,
              ),
              child: Text(
                'Credit Without Collaterial',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '0% - 21.5%       Up to 25,000 \$       12-48 Months',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
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
                'Interest Rate        Repayment term         Repayment term',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 226.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
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
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreditsInfo(
                            interestRate: '0% - 21.5%',
                            repaymentTerm: '12-48 Months',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 13,
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
                left: 15.0,
              ),
              child: Text(
                'Collateral Credit',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '12% - 30.5%       Up to 50,000 \$       24-96 Months',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
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
                'Interest Rate          Repayment term         Repayment term',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 226.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
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
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreditsInfo(
                            interestRate: '12% - 30.5%',
                            repaymentTerm: '24-96 Months',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 13,
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
                left: 15.0,
              ),
              child: Text(
                'Mortgage Credit',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '24% - 56.5%       Up to 75,000 \$       24-96 Months',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
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
                'Interest Rate          Repayment term         Repayment term',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 226.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
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
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreditsInfo(
                            interestRate: '24% - 56.5%',
                            repaymentTerm: '24-96 Months',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 13,
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
                left: 15.0,
              ),
              child: Text(
                'Mortgage Credit',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '32% - 64.5%       Up to 150,000 \$       24-96 Months',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 14,
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
                'Interest Rate          Repayment term         Repayment term',
                style: TextStyle(
                  color: Color(0xFFFFEA7B),
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 226.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
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
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreditsInfo(
                            interestRate: '32% - 64.5%',
                            repaymentTerm: '24-96 Months',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'All...',
                      style: TextStyle(
                        color: Color(0xFFFFEA7B),
                        fontSize: 13,
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
