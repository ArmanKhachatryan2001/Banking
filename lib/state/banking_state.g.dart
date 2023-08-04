// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banking_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BankingState on _BankingState, Store {
  late final _$userAtom = Atom(name: '_BankingState.user', context: context);

  @override
  ObservableList<UserData> get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(ObservableList<UserData> value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$userDataIndexAtom =
      Atom(name: '_BankingState.userDataIndex', context: context);

  @override
  int get userDataIndex {
    _$userDataIndexAtom.reportRead();
    return super.userDataIndex;
  }

  @override
  set userDataIndex(int value) {
    _$userDataIndexAtom.reportWrite(value, super.userDataIndex, () {
      super.userDataIndex = value;
    });
  }

  late final _$isCheckedAtom =
      Atom(name: '_BankingState.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  late final _$eyeFlagAtom =
      Atom(name: '_BankingState.eyeFlag', context: context);

  @override
  bool get eyeFlag {
    _$eyeFlagAtom.reportRead();
    return super.eyeFlag;
  }

  @override
  set eyeFlag(bool value) {
    _$eyeFlagAtom.reportWrite(value, super.eyeFlag, () {
      super.eyeFlag = value;
    });
  }

  late final _$signInCheckAtom =
      Atom(name: '_BankingState.signInCheck', context: context);

  @override
  bool get signInCheck {
    _$signInCheckAtom.reportRead();
    return super.signInCheck;
  }

  @override
  set signInCheck(bool value) {
    _$signInCheckAtom.reportWrite(value, super.signInCheck, () {
      super.signInCheck = value;
    });
  }

  late final _$flagImageAtom =
      Atom(name: '_BankingState.flagImage', context: context);

  @override
  String get flagImage {
    _$flagImageAtom.reportRead();
    return super.flagImage;
  }

  @override
  set flagImage(String value) {
    _$flagImageAtom.reportWrite(value, super.flagImage, () {
      super.flagImage = value;
    });
  }

  late final _$flagImageCodeAtom =
      Atom(name: '_BankingState.flagImageCode', context: context);

  @override
  String get flagImageCode {
    _$flagImageCodeAtom.reportRead();
    return super.flagImageCode;
  }

  @override
  set flagImageCode(String value) {
    _$flagImageCodeAtom.reportWrite(value, super.flagImageCode, () {
      super.flagImageCode = value;
    });
  }

  late final _$checkDataAtom =
      Atom(name: '_BankingState.checkData', context: context);

  @override
  bool get checkData {
    _$checkDataAtom.reportRead();
    return super.checkData;
  }

  @override
  set checkData(bool value) {
    _$checkDataAtom.reportWrite(value, super.checkData, () {
      super.checkData = value;
    });
  }

  late final _$bankingStateIndexAtom =
      Atom(name: '_BankingState.bankingStateIndex', context: context);

  @override
  int get bankingStateIndex {
    _$bankingStateIndexAtom.reportRead();
    return super.bankingStateIndex;
  }

  @override
  set bankingStateIndex(int value) {
    _$bankingStateIndexAtom.reportWrite(value, super.bankingStateIndex, () {
      super.bankingStateIndex = value;
    });
  }

  late final _$screenIndexAtom =
      Atom(name: '_BankingState.screenIndex', context: context);

  @override
  int get screenIndex {
    _$screenIndexAtom.reportRead();
    return super.screenIndex;
  }

  @override
  set screenIndex(int value) {
    _$screenIndexAtom.reportWrite(value, super.screenIndex, () {
      super.screenIndex = value;
    });
  }

  late final _$_BankingStateActionController =
      ActionController(name: '_BankingState', context: context);

  @override
  void checkScreen(int index) {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.checkScreen');
    try {
      return super.checkScreen(index);
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearUserData() {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.clearUserData');
    try {
      return super.clearUserData();
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeImage(String imageName) {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.changeImage');
    try {
      return super.changeImage(imageName);
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeImageCode(String imageCode) {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.changeImageCode');
    try {
      return super.changeImageCode(imageCode);
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void check(bool flag) {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.check');
    try {
      return super.check(flag);
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void eyeChecked() {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.eyeChecked');
    try {
      return super.eyeChecked();
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
userDataIndex: ${userDataIndex},
isChecked: ${isChecked},
eyeFlag: ${eyeFlag},
signInCheck: ${signInCheck},
flagImage: ${flagImage},
flagImageCode: ${flagImageCode},
checkData: ${checkData},
bankingStateIndex: ${bankingStateIndex},
screenIndex: ${screenIndex}
    ''';
  }
}
