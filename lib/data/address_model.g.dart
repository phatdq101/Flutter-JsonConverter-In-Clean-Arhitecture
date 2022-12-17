// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['address1'] as String?,
      json['address2'] as String?,
      (json['tax'] as List<dynamic>?)
          ?.map((e) => const TaxConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'tax': instance.tax?.map(const TaxConverter().toJson).toList(),
      'phone': instance.phone,
    };
