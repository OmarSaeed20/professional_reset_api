import 'package:professional_reset_api/api/use_case/base_use_case.dart';

import '../api/typedef/typedef.dart';
import '/index.dart';

class GetAllUseCase extends UseCaseWithoutParams<List<User>> {
  final AppRepository _repo;
  GetAllUseCase(this._repo);
  
  @override
  ResultFuture<List<User>> call() async => await _repo.getAllUsers();
}
 
