import 'package:flutter/cupertino.dart';

class UserCards extends StatefulWidget {
  const UserCards({
    Key? key,
    required this.userName,
    required this.userSurname,
  }) : super(key: key);

  final userName;
  final userSurname;

  @override
  State<UserCards> createState() => _UserCardsState();
}

class _UserCardsState extends State<UserCards> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 9,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Stack(
            children: [
              Image.asset(
                'images/cardpink.png',
                height: 180,
              ),
              const Positioned(
                top: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Card balance',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 65,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '\$ 1,256,000',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 122,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '1234 5678 9876 5433',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    '${widget.userName} ${widget.userSurname}',
                    // Replace this with your actual text
                    style: const TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Stack(
            children: [
              Image.asset(
                'images/cardBlack.png',
                height: 180,
              ),
              const Positioned(
                top: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Card balance',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 65,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '\$ 450,250',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 122,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '2333 6666 9236 1233',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    '${widget.userName} ${widget.userSurname}',
                    // Replace this with your actual text
                    style: const TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Stack(
            children: [
              Image.asset(
                'images/card1.png',
                height: 180,
              ),
              const Positioned(
                top: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Card balance',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 65,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '\$ 99,250',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 122,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '4444 6556 6636 0033',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    '${widget.userName} ${widget.userSurname}',
                    // Replace this with your actual text
                    style: const TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Stack(
            children: [
              Image.asset(
                'images/card2.png',
                height: 180,
              ),
              const Positioned(
                top: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Card balance',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 65,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '\$ 10,150,000',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 122,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '9999 6666 2343 7658',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    '${widget.userName} ${widget.userSurname}',
                    // Replace this with your actual text
                    style: const TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
