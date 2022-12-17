import 'tax.dart';

class Address {
  final String? address1;
  final String? address2;
  final List<Tax>? tax;
  final List<String>? phone;

  Address(this.address1, this.address2, this.tax, this.phone);
}
