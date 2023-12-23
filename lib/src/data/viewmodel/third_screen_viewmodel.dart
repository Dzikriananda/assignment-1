import 'package:assigment_1/src/data/abstract_repository/repository.dart';
import 'package:assigment_1/src/data/model/user_response.dart';
import 'package:flutter/material.dart';

class ThirdScreenViewModel extends ChangeNotifier{
  final Repository repository;

  ThirdScreenViewModel({required this.repository});

  Future<List<Datum>> fetchPage(int pageKey) async {
    try {
      final result = await repository.fetchData(pageKey);
      final List<Datum> items = result.data;
      return items;
    } catch (error) {
      return [];
    }
  }



}