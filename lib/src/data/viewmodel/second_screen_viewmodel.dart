import 'package:flutter/material.dart';

class SecondScreenViewModel extends ChangeNotifier{
  String? _name;

  set name(String? input){
    _name = input;
    notifyListeners();
  }
  String? get name => _name;

}