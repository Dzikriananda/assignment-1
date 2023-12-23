import 'package:http/http.dart' as http;

class ApiService {
  // String baseUrl = "https://reqres.in/api/users?page=1&per_page=10";
  String baseUrl = "https://reqres.in/api/users";


  Future<http.Response> fetchList(int pageKey) async {
    Map<String, String> qParams = {
      'page': pageKey.toString(),
      'per_page': '10',
    };
    final uri = Uri.parse('$baseUrl');
    final finalUri = uri.replace(queryParameters: qParams);
    return await http.get(finalUri);
  }

}