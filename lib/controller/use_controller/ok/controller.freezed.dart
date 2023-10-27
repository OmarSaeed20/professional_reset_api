// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultState {
  List<User> get users => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  RequestState get requstState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
  @useResult
  $Res call({List<User> users, String error, RequestState requstState});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? error = null,
    Object? requstState = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      requstState: null == requstState
          ? _value.requstState
          : requstState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultStateImplCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory _$$ResultStateImplCopyWith(
          _$ResultStateImpl value, $Res Function(_$ResultStateImpl) then) =
      __$$ResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, String error, RequestState requstState});
}

/// @nodoc
class __$$ResultStateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultStateImpl>
    implements _$$ResultStateImplCopyWith<$Res> {
  __$$ResultStateImplCopyWithImpl(
      _$ResultStateImpl _value, $Res Function(_$ResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? error = null,
    Object? requstState = null,
  }) {
    return _then(_$ResultStateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      requstState: null == requstState
          ? _value.requstState
          : requstState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$ResultStateImpl with DiagnosticableTreeMixin implements _ResultState {
  const _$ResultStateImpl(
      {final List<User> users = const [],
      this.error = "",
      this.requstState = RequestState.loading})
      : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final RequestState requstState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState(users: $users, error: $error, requstState: $requstState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('requstState', requstState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.requstState, requstState) ||
                other.requstState == requstState));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), error, requstState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      __$$ResultStateImplCopyWithImpl<_$ResultStateImpl>(this, _$identity);
}

abstract class _ResultState implements ResultState {
  const factory _ResultState(
      {final List<User> users,
      final String error,
      final RequestState requstState}) = _$ResultStateImpl;

  @override
  List<User> get users;
  @override
  String get error;
  @override
  RequestState get requstState;
  @override
  @JsonKey(ignore: true)
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
