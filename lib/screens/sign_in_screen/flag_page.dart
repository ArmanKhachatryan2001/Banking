import 'package:banking/state/banking_state.dart';
import 'package:flutter/material.dart';

class FlagPage extends StatefulWidget {
  final BankingState bankingState;

  const FlagPage({
    Key? key,
    required this.bankingState,
  }) : super(key: key);

  @override
  State<FlagPage> createState() => _FlagPageState();
}

class _FlagPageState extends State<FlagPage> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      child: AlertDialog(
        backgroundColor: Colors.white10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
            width: 2,
            color: Color(0xFFF2BE22),
          )
        ),
        content: SizedBox(
          width: 5,
          height: 150,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag1.png';
                      widget.bankingState.flagImageCode = '+374';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag1.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+374',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag2.png';
                      widget.bankingState.flagImageCode = '+377';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag2.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+377',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag3.png';
                      widget.bankingState.flagImageCode = '+376';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag3.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+376',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag4.png';
                      widget.bankingState.flagImageCode = '+1';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag4.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+1',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag5.png';
                      widget.bankingState.flagImageCode = '+4';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag5.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+4',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag6.png';
                      widget.bankingState.flagImageCode = '+74';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag6.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+74',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag7.png';
                      widget.bankingState.flagImageCode = '+39';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag7.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+39',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag8.png';
                      widget.bankingState.flagImageCode = '+34';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag8.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+34',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag9.png';
                      widget.bankingState.flagImageCode = '+304';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag9.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+304',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag10.png';
                      widget.bankingState.flagImageCode = '+99';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag10.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+99',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag11.png';
                      widget.bankingState.flagImageCode = '+89';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag11.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+89',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag12.png';
                      widget.bankingState.flagImageCode = '+22';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag12.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+22',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag13.png';
                      widget.bankingState.flagImageCode = '+44';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag13.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+44',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag14.png';
                      widget.bankingState.flagImageCode = '+84';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag14.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+84',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.bankingState.flagImage = 'images/flag15.png';
                      widget.bankingState.flagImageCode = '+123';
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                          ),
                          child: Image.asset(
                            'images/flag15.png',
                            width: 25,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '+123',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
