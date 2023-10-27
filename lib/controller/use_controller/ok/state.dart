part of 'controller.dart';

@freezed
abstract class ResultState with _$ResultState {
  const factory ResultState({
    @Default([]) List<User> users,
    @Default("") String error,
    @Default(RequestState.loading) RequestState requstState,
  }) = _ResultState;
}

class ResultState2 {
  RxList<User> users = <User>[].obs;
  Rx<String> error = "".obs;
  Rx<RequestState> requstState = RequestState.loading.obs;
}

enum RequestState {
  loading,
  success,
  error,
}

extension CategoryStatusX on RequestState {
  // bool get isNon => this == RequestState.none;
  bool get isSuccess => this == RequestState.success;
  bool get isError => this == RequestState.error;
  bool get isLoading => this == RequestState.loading;
}
