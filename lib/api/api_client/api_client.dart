import 'package:dio/dio.dart';
import 'package:professional_reset_api/model/user/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('users')
  Future<List<User>> getUsers();

  @GET('users/{id}')
  Future<User> getUserId(@Path("id") int id);

  @POST('users')
  Future<User> createUser(
    @Body() User newUser
  );

  @DELETE('users/{id}')
  Future<void> deleteUser(
    @Path() int id
    
  );

  @DELETE('users/{id}')
  Future<HttpResponse> deleteUser2(
    @Path() int id
  );
}
