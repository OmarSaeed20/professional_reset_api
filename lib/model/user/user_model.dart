import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  User({this.id, this.name, this.email, this.gender, this.status});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$UserToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
