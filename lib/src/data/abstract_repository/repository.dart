import 'package:assigment_1/src/data/model/user_response.dart';

abstract class Repository {
  Future<UserResponse> fetchData(int pageKey);
}