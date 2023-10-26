import 'package:get_it/get_it.dart';
import 'package:professional_reset_api/index.dart'; 

GetIt sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerFactory<UserCubit>(() => UserCubit(sl()));
  sl.registerLazySingleton<AppRepository>(() => AppRepository(sl()));
  sl.registerLazySingleton<ApiClient>(() => ApiClient(intiDio));
}
