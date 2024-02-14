import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel with EquatableMixin {
  UserModel({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.displayName,
    required this.photoUrl,
    required this.isVerified,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  final String firstname;
  final String lastname;
  final String email;
  final String displayName;
  final String photoUrl;
  final bool isVerified;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [
        firstname,
        lastname,
        email,
        displayName,
        photoUrl,
        isVerified,
      ];
}
