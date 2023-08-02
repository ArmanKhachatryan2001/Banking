import 'package:banking/screens/user/user_page/user_transactions/user_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../state/user_state.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFF646A73),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'My cards',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: UserCards(
                  userName: UserState.bankingState
                      .user[UserState.bankingState.userDataIndex].name,
                  userSurname: UserState.bankingState
                      .user[UserState.bankingState.userDataIndex].surname,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Transactions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                width: 155,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFF646A73),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/buy.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopping',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '12:30 PM, today',
                    style: TextStyle(
                      color: Color(0xFF9DA1A7),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 120,
              ),
              const Text(
                "-\$ 118,5",
                style: TextStyle(
                  color: Color(0xFF2E5CE5),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/fastfood.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Restaurant Submarine',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '12:30 PM, today',
                    style: TextStyle(
                      color: Color(0xFF9DA1A7),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 93,
              ),
              const Text(
                "-\$ 33,5",
                style: TextStyle(
                  color: Color(0xFF2E5CE5),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/coffe.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cafe cashback',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '12:30 PM, today',
                    style: TextStyle(
                      color: Color(0xFF9DA1A7),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 123,
              ),
              const Text(
                "+\$ 0.85",
                style: TextStyle(
                  color: Color(0xFF2E5CE5),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/ticket.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Opera ticket’s',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '12:30 PM, today',
                    style: TextStyle(
                      color: Color(0xFF9DA1A7),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 123,
              ),
              const Text(
                "-\$ 125",
                style: TextStyle(
                  color: Color(0xFF2E5CE5),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFF646A73),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
