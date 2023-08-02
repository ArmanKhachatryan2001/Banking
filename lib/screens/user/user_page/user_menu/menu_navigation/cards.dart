import 'package:banking/screens/user/user_page/user_menu/menu_navigation/card_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../state/user_state.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Cards',
                style: TextStyle(
                  color: Color(0xFFF2BE22),
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'images/cards1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 17,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
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
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Image.asset(
                            'images/paypass.png',
                            width: 16,
                            height: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 37,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'XXXX XXXX XXXX XXXX',
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 9.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 115.0),
                          child: Image.asset(
                            'images/logo.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 13,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Business Card',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$          100\$ Year       8 years',
                        style: TextStyle(
                          color: Color(0xFFFFEA7B),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Currency     Service fee              Validity',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF2BE22),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          builder: (context) => CardInfo(
                            card: 'images/cards1.png',
                            cardName: 'Business Card',
                            logo: 'images/logo.png',
                            money: '100\$ Year',
                            year: '8 years',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 10,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'images/cards2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 17,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
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
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Image.asset(
                            'images/paypass.png',
                            width: 16,
                            height: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 37,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'XXXX XXXX XXXX XXXX',
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 9.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 115.0),
                          child: Image.asset(
                            'images/visa.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 160.0,
                          top: 13,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Visa Card',
                              style: TextStyle(
                                color: Color(0xFFDFE5EE),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$          20\$ Year        5 years',
                              style: TextStyle(
                                color: Color(0xFFFFEA7B),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Currency     Service fee              Validity',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF2BE22),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          builder: (context) => CardInfo(
                            card: 'images/cards2.png',
                            cardName: 'Visa Card',
                            logo: 'images/visa.png',
                            money: '20\$ Year',
                            year: '5 years',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 10,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'images/cards3.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 17,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
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
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Image.asset(
                            'images/paypass.png',
                            width: 16,
                            height: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 37,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'XXXX XXXX XXXX XXXX',
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 9.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 115.0),
                          child: Image.asset(
                            'images/logo.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 13,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Platinum Card',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$          200\$ Year     10 years',
                        style: TextStyle(
                          color: Color(0xFFFFEA7B),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Currency     Service fee              Validity',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF2BE22),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Color(0xFFDFE5EE),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          builder: (context) => CardInfo(
                            card: 'images/cards3.png',
                            cardName: 'Platinum Card',
                            logo: 'images/logo.png',
                            money: '200\$ Year',
                            year: '10 years',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: Color(0xFFDFE5EE),
                        fontSize: 10,
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
