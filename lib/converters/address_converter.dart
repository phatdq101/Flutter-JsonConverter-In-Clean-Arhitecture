import 'package:json_annotation/json_annotation.dart';

import '../data/address_model.dart';
import '../domain/address.dart';

class AddressConverter implements JsonConverter<Address, Map<String, dynamic>> {
  const AddressConverter();

  @override
  Address fromJson(Map<String, dynamic> json) {
    AddressModel addressModel = AddressModel.fromJson(json);
    return Address(
      addressModel.address1,
      addressModel.address2,
      addressModel.tax,
      addressModel.phone,
    );
  }

  @override
  Map<String, dynamic> toJson(Address object) {
    AddressModel addressModel = AddressModel(
      object.address1,
      object.address2,
      object.tax,
      object.phone,
    );
    return addressModel.toJson();
  }
}
