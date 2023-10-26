import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:professional_reset_api/api/network_exceptions/network_exceptions.dart';
part 'user_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.none() = None<T>;
  const factory ResultState.loading() = Loading<T>;
  const factory ResultState.success(T data) = Success<T>;
  const factory ResultState.error(NetworkExceptions exceptions) = Error<T>;
}
