
import 'package:assigment_1/src/data/abstract_repository/repository.dart';
import 'package:assigment_1/src/data/data_source/api_service.dart';
import 'package:assigment_1/src/data/model/user_response.dart';

class RepositoryImpl extends Repository {
  late ApiService apiService;

  RepositoryImpl(){
    apiService = ApiService();
  }

  @override
  Future<UserResponse> fetchData(int pageKey) async {
    final response = await apiService.fetchList(pageKey);
    return userResponseFromJson(response.body);
  }
}