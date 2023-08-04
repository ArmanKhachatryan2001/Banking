import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../state/user_state.dart';

class CreditsInfo extends StatefulWidget {
  final interestRate;
  final repaymentTerm;

  const CreditsInfo({
    Key? key,
    required this.interestRate,
    required this.repaymentTerm,
  }) : super(key: key);

  @override
  State<CreditsInfo> createState() => _CreditsInfoState();
}

class _CreditsInfoState extends State<CreditsInfo> {
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
                left: 15.0,
              ),
              child: Text(
                'Credit Without Collaterial',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 20,
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 10,
              ),
              child: SizedBox(
                height: 190,
                width: 330,
                child: Image.asset(
                  'images/credit_collection.png',
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
                'Currency',
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
                'USD \$',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '${widget.interestRate}',
                style: const TextStyle(
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
                'Repayment term',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                '${widget.repaymentTerm}',
                style: const TextStyle(
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
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                    'Get a loan/credit line up to 2,000 USD/ 3200\$'
                    'within a few minutes, without collateral.'
                    'The loan is provided without commission and '
                    'other additional payments.       To get a loan,'
                    ' you need to have a good credit history and'
                    ' an appropriate credit score.',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 16,
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
