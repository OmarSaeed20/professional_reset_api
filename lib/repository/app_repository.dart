import 'package:professional_reset_api/index.dart';
import 'package:retrofit/dio.dart';

class AppRepository {
  final ApiClient _apiClient;

  AppRepository(this._apiClient);

  Future<ApiResult<List<User>>> getAllUsers() async {
    try {
      var response = await _apiClient.getUsers();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<ApiResult<User>> getUserId(int id) async {
    try {
      var response = await _apiClient.getUserId(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<User>> createUser(User newUser) async {
    try {
      var response = await _apiClient.createUser(newUser);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<void>> deletUser(int id) async {
    try {
      await _apiClient.deleteUser(id);
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<HttpResponse> deletUser2(int id) async =>
      await _apiClient.deleteUser2(id);
}
