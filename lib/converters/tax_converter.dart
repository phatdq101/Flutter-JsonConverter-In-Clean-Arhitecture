import 'package:json_annotation/json_annotation.dart';
import 'package:json_serialization/domain/tax.dart';
import 'package:json_serialization/data/tax_model.dart';

class TaxConverter implements JsonConverter<Tax, Map<String, dynamic>> {
  @override
  Tax fromJson(Map<String, dynamic> json) {
    TaxModel taxModel = TaxModel.fromJson(json);
    return Tax(
      taxModel.id,
      taxModel.ownerName,
      taxModel.registerDate,
    );
  }

  @override
  Map<String, dynamic> toJson(Tax object) {
    TaxModel taxModel = TaxModel(
      object.id,
      object.ownerName,
      object.registerDate,
    );
    return taxModel.toJson();
  }

  const TaxConverter();
}
