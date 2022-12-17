import 'package:json_annotation/json_annotation.dart';
import 'package:json_serialization/converters/address_converter.dart';

import '../domain/address.dart';
import '../domain/user.dart';

part 'user_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  converters: [
    AddressConverter(),
  ],
)
class UserModel implements User {
  UserModel(this.name, this.email, this.address);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  Address? address;

  @override
  String? email;

  @override
  String? name;
}
