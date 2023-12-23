import 'package:assigment_1/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstScreenViewModel extends ChangeNotifier{
  late String _palindromText;
  String? _message;
  String? _name;

  FirstScreenViewModel() {
    palindromText = '';
  }

  String get palindromText => _palindromText;
  String get message => _message!;
  String get name => _name!;

  set palindromText (String input){
    _palindromText = input;
  }

  set name (String input){
    _name = input;
  }

  checkPalindrome(BuildContext context) {
    final result = Utils.isPalindrome(_palindromText);
    _message = (result) ? AppLocalizations.of(context)!.firstScreenAlertDialogPalindrome
        : AppLocalizations.of(context)!.firstScreenAlertDialogNotPalindrome;
  }



}