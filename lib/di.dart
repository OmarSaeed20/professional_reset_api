import 'package:get_it/get_it.dart';
import 'package:professional_reset_api/index.dart';

import 'controller/use_controller/ok/controller.dart';
import 'use_case/get_all_users_use_case.dart';

GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerFactory<UserCubit>(() => UserCubit(sl()));
  sl.registerLazySingleton<AppRepository>(() => AppRepository(sl()));
  sl.registerLazySingleton<ApiClient>(() => ApiClient(intiDio));

  sl.registerLazySingleton<GetAllUseCase>(() => GetAllUseCase(sl()));
  sl.registerLazySingleton<UserController>(() => UserController(sl()));
}
