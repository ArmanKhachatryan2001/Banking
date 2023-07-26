import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'banking_state.g.dart';

class BankingState = _BankingState with _$BankingState;

abstract class _BankingState with Store {
  @observable
  Color? color;

  @observable
  bool isChecked = false;

  @action
  void changeButton(bool flag) {
    if (flag) {
      color = Colors.white38;
    } else {
      color = null;
    }
  }

  @action
  void check() {
    isChecked = !isChecked;
  }

// bool? get isCheck => isChecked;
}
