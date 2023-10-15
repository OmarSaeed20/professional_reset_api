import 'package:professional_reset_api/api/api_client.dart';
import 'package:professional_reset_api/model/user/user_model.dart';

class AppRepository {
  final ApiClient _apiClient;

  AppRepository(this._apiClient);

  Future<List<User>> getAllUsers() async {
    var response = await _apiClient.getUsers();
    return response.map((e) => User.fromJson(e.toJson())).toList();
  }
}
