import 'package:professional_reset_api/model/user/user_model.dart';
import 'package:professional_reset_api/repository/app_repository.dart';

import '/index.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this._repository) : super(UserInitial());

  final AppRepository _repository;

  void getAllUsers() async {
    _repository.getAllUsers().then((value) => emit(GetAllUsers(value)));
  }
}
