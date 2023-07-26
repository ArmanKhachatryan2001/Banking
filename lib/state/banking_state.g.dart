// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banking_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BankingState on _BankingState, Store {
  late final _$colorAtom = Atom(name: '_BankingState.color', context: context);

  @override
  Color? get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color? value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
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

  late final _$_BankingStateActionController =
      ActionController(name: '_BankingState', context: context);

  @override
  void changeButton(bool flag) {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.changeButton');
    try {
      return super.changeButton(flag);
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void check() {
    final _$actionInfo = _$_BankingStateActionController.startAction(
        name: '_BankingState.check');
    try {
      return super.check();
    } finally {
      _$_BankingStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color},
isChecked: ${isChecked}
    ''';
  }
}
