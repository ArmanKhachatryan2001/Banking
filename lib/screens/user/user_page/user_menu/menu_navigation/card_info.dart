import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../state/user_state.dart';

class CardInfo extends StatefulWidget {
  final card;
  final cardName;
  final logo;
  final money;
  final year;

  const CardInfo({
    Key? key,
    required this.card,
    required this.cardName,
    required this.logo,
    required this.money,
    required this.year,
  }) : super(key: key);

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
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
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '${widget.cardName}',
                style: const TextStyle(
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
            Padding(
              padding: const EdgeInsets.only(
                left: 70.0,
                top: 20,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width: 230,
                    height: 145,
                    child: Image.asset(
                      '${widget.card}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 17,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Image.asset(
                        'images/chip.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 21,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Image.asset(
                        'images/paypass.png',
                        width: 16,
                        height: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 67,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'XXXX XXXX XXXX XXXX',
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 18,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'NAME SURNAME',
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 18,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 185.0),
                      child: Image.asset(
                        '${widget.logo}',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ],
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
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Card currency',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                '\$',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Annual Service',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                widget.money,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Validity year',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                widget.year,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                ),
              ),
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
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Use the wide scope of advantages of'
                ' premium class Business card by paying as'
                ' low as USD 100 a year. Order the card'
                ' through platform and receive 20%'
                ' discount for the service fee for the first'
                ' year by paying USD 6,400 instead of USD'
                ' 8,000. Cash withdrawal with Business card'
                ' from all ATMs system is free of charge.'
                ' Business cards are accepted worldwide.',
                style: TextStyle(
                  color: Color(0xFFDFE5EE),
                  fontSize: 16,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0,),
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
