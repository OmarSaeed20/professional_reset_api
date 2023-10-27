import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:professional_reset_api/api/network_exceptions/network_exceptions.dart';
import 'package:professional_reset_api/model/user/user_model.dart';
import 'package:professional_reset_api/repository/app_repository.dart';
import 'package:professional_reset_api/use_case/get_all_users_use_case.dart';
part 'controller.freezed.dart';
part 'state.dart';

class UserController extends GetxController {
  UserController(this._allUseCase);
  final GetAllUseCase _allUseCase;

  final Rx<ResultState2> state = ResultState2().obs;
  // RxList<User> users = <User>[].obs;
  // Rx<String> error = "".obs;
  // Rx<RequestState> requstState = RequestState.loading.obs;

  void getAllUsers() async {
    state.value.requstState(RequestState.loading);
    // state(state.value.copyWith(requstState: RequestState.loading));
    var data = await _allUseCase();

    data.when(
      success: (data) {
        state.value.users(data);
        state.value.requstState(RequestState.success);
      }
      /*  state(
        state.value.copyWith(requstState: RequestState.success, users: data),
      ) */
      ,
      failure: (networkExceptions) {
        state.value.requstState(RequestState.error);
        state.value.error(NetworkExceptions.getErrorMessage(networkExceptions));
      }
      /*state(
         state.value.copyWith(
          requstState: RequestState.error,
          error: NetworkExceptions.getErrorMessage(networkExceptions),
        ),
      ) */
      ,
    );
  }

  @override
  void onInit() {
    getAllUsers();
    super.onInit();
  }
}
