part of 'user_cubit.dart';

@immutable
sealed class UserState {}

class UserInitial extends UserState {}

class GetAllUsers extends UserState {
  GetAllUsers(this.allUser);
  final List<User> allUser;
}
