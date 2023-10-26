import 'package:professional_reset_api/controller/user/user_state.dart';

import '/index.dart';

class UserCubit extends Cubit<ResultState<List<User>>> {
  UserCubit(this._repository) : super(const Loading());

  final AppRepository _repository;

  void getAllUsers() async {
    var data = await _repository.getAllUsers();
    data.when(
      success: (data) => emit(ResultState.success(data)),
      failure: (networkExceptions) =>
          emit(ResultState.error(networkExceptions)),
    );
  }

/*   Future<void> createUser(User user) async {
    var data = await _repository.createUser(user);
    data.when(
      success: (user) => emit(ResultState.success(user)),
      failure: (networkExceptions) =>
          emit(ResultState.error(networkExceptions)),
    );
  } */
/*   Future<void> getUserId(int id) async {
    _repository.getUserId(id).then((user) => emit(GetUserId(user)));
  }



  Future<void> deletUser(int id) async {
    _repository.deletUser(id).then((_) => emit(DeleteUser("")));
  }

  Future<void> deletUser2(int id) async {
    _repository.deletUser2(id).then((r) => emit(DeleteUser(r)));
  } */
}
