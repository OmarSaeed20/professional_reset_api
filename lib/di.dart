import 'package:get_it/get_it.dart';
import 'package:professional_reset_api/api/api_client.dart';
import 'package:professional_reset_api/api/dio.dart';
import 'package:professional_reset_api/controller/cubit/user_cubit.dart';
import 'package:professional_reset_api/repository/app_repository.dart';

GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerLazySingleton<UserCubit>(() => UserCubit(sl())..getAllUsers());
  sl.registerLazySingleton<AppRepository>(() => AppRepository(sl()));
  sl.registerLazySingleton<ApiClient>(() => ApiClient(intiDio));
}
