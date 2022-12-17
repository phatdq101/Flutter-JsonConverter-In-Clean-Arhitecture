import 'package:json_annotation/json_annotation.dart';
import 'package:json_serialization/domain/tax.dart';

part 'tax_model.g.dart';

@JsonSerializable()
class TaxModel implements Tax {
  @override
  String? id;

  @override
  String? ownerName;

  @override
  String? registerDate;

  TaxModel(this.id, this.ownerName, this.registerDate);

  factory TaxModel.fromJson(Map<String, dynamic> json) =>
      _$TaxModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaxModelToJson(this);
}
