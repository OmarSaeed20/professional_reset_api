import 'package:dio/dio.dart';
import 'package:professional_reset_api/model/user/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('users')
  Future<List<User>> getUsers();
}
