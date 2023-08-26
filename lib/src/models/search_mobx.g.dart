// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Search on _SearchBase, Store {
  late final _$tapFormAtom =
      Atom(name: '_SearchBase.tapForm', context: context);

  @override
  bool get tapForm {
    _$tapFormAtom.reportRead();
    return super.tapForm;
  }

  @override
  set tapForm(bool value) {
    _$tapFormAtom.reportWrite(value, super.tapForm, () {
      super.tapForm = value;
    });
  }

  late final _$_SearchBaseActionController =
      ActionController(name: '_SearchBase', context: context);

  @override
  dynamic changeTapForm() {
    final _$actionInfo = _$_SearchBaseActionController.startAction(
        name: '_SearchBase.changeTapForm');
    try {
      return super.changeTapForm();
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTapOutsideForm() {
    final _$actionInfo = _$_SearchBaseActionController.startAction(
        name: '_SearchBase.changeTapOutsideForm');
    try {
      return super.changeTapOutsideForm();
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tapForm: ${tapForm}
    ''';
  }
}
