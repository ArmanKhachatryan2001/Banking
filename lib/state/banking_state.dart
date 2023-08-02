import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../screens/models/user_data.dart';
part 'banking_state.g.dart';

class BankingState = _BankingState with _$BankingState;

abstract class _BankingState with Store {
  @observable
  ObservableList<UserData> user = ObservableList<UserData>.of([]);

  @observable
  Color? color;

  @observable
  int userDataIndex = 0;

  @observable
  bool isChecked = false;

  @observable
  bool eyeFlag = true;

  @observable
  bool signInCheck = true;

  @observable
  String flagImage = 'images/flag1.png';

  @observable
  String flagImageCode = '+374';

  @observable
  bool checkData = true;

  @observable
  int bankingStateIndex = 0;

  @observable
  int screenIndex = 0;

  @action
  void checkScreen(int index) {
    bankingStateIndex = index;
  }

  @action /////////////////
  void clearUserData() {
    user.clear();
  }

  @action
  void changeImage(String imageName) {
    flagImage = imageName;
  }

  @action
  void changeImageCode(String imageCode) {
    flagImageCode = imageCode;
  }

  @action
  void changeButton(bool flag) {
    if (flag) {
      color = Colors.white38;
    } else {
      color = null;
    }
  }

  @action
  void check(bool flag) {
    isChecked = flag;
  }

  @action
  void eyeChecked() {
    eyeFlag = !eyeFlag;
  }
}
