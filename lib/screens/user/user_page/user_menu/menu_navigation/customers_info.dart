import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../state/user_state.dart';

class CustomersInfo extends StatefulWidget {
  const CustomersInfo({super.key});

  @override
  State<CustomersInfo> createState() => _CustomersInfoState();
}

class _CustomersInfoState extends State<CustomersInfo> {
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
                'Our Customers',
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
                left: 35.0,
              ),
              child: SizedBox(
                width: 300,
                height: 200,
                child: Text(
                  'The customer is at the center of'
                  ' everything we do. Our products and'
                  ' services have one common goal: helping'
                  ' our customers thrive and grow and '
                  'supporting them on their individual journeys.'
                  ' We believe in the power of trust and lasting'
                  ' relationships. Whether you represent'
                  ' a corporation or a financial institution,'
                  ' whether you are based in Austria or operate'
                  ' globally (or both): RBI is the ideal partner'
                  ' for your business in Austria and Central '
                  'and Eastern Europe.',
                  style: TextStyle(
                    color: Color(0xFFDFE5EE),
                    fontSize: 15,
                  ),
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
                  color: const Color(0xFFDFE5EE),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: Container(
                    width: 160,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 160,
                          height: 100,
                          child: Image.asset(
                            'images/customer1.png',
                            fit: BoxFit.fill,
                          ),
                        ),

                        ////////////////////////
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'INSTITUTIONAL CLIENTS',
                          style: TextStyle(
                            color: Color(0xFFF2BE22),
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 12.0,
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Text(
                              'We are the relationship'
                              ' bank for top companies'
                              ' and your bridge to CEE'
                              ' with our network in 13'
                              ' CEE countries. Our aim'
                              ' is to facilitate your'
                              ' business with our innovations'
                              ' and active central advisory.',
                              style: TextStyle(
                                color: Color(0xFFDFE5EE),
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 120,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Our Product',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 120,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'More...',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 160,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFF2BE22),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 100,
                        child: Image.asset(
                          'images/customer2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'RETAIL & PRIVATE BANKING',
                        style: TextStyle(
                          color: Color(0xFFF2BE22),
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Text(
                            'We are the partner bank for'
                            ' financial players worldwide.'
                            '                      Our innovative solutions and'
                            ' products help you grow your'
                            ' business fast and easily.'
                            '                          '
                            '                          '
                            ' We always strive to inspire'
                            ' you with our services.',
                            style: TextStyle(
                              color: Color(0xFFDFE5EE),
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 120,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFF2BE22),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Our Product',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 120,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFF2BE22),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'More...',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: Container(
                    width: 160,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFF2BE22),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 160,
                          height: 100,
                          child: Image.asset(
                            'images/customer3.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'CORPORATE CUSTOMERS',
                          style: TextStyle(
                            color: Color(0xFFF2BE22),
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 12.0,
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Text(
                              'We are the partner bank'
                              ' for financial players'
                              ' worldwide. Our innovative'
                              ' solutions and products'
                              ' help you grow your'
                              ' business fast and easily.'
                              ' We always strive to inspire'
                              ' you with our services.',
                              style: TextStyle(
                                color: Color(0xFFDFE5EE),
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 120,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Our Product',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 120,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF2BE22),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'More...',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 160,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFF2BE22),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 100,
                        child: Image.asset(
                          'images/customer4.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'ONLINE CUSTOMERS',
                        style: TextStyle(
                          color: Color(0xFFF2BE22),
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Text(
                            'companies and your bridge'
                            ' to CEE with our network'
                            ' in 13 CEE countries.'
                            '                       '
                            '                       '
                            ' Our aim is to facilitate'
                            ' your business with our'
                            ' innovations and active'
                            ' central advisory.',
                            style: TextStyle(
                              color: Color(0xFFDFE5EE),
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 120,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFF2BE22),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Our Product',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 120,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFF2BE22),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'More...',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
