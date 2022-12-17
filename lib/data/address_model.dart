import 'package:json_annotation/json_annotation.dart';
import 'package:json_serialization/domain/tax.dart';
import 'package:json_serialization/converters/tax_converter.dart';

import '../domain/address.dart';

part 'address_model.g.dart';

@JsonSerializable(
  converters: [
    TaxConverter(),
  ],
)
class AddressModel implements Address {
  AddressModel(
    this.address1,
    this.address2,
    this.tax,
    this.phone,
  );

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  String? address1;

  @override
  String? address2;

  @override
  List<Tax>? tax;

  @override
  List<String>? phone;
}
