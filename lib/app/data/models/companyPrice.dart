// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CompanyPrice {
  int id;
  int companyId;
  String companyLogo;
  int date;
  double openPrice;
  double d1VariationPercentage;
  double firstPriceVariationPercentage;

  CompanyPrice(
    this.id,
    this.companyId,
    this.companyLogo,
    this.date,
    this.openPrice,
    this.d1VariationPercentage,
    this.firstPriceVariationPercentage
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'companyId': companyId,
      'companyLogo': companyLogo,
      'date': date,
      'openPrice': openPrice,
      'd1VariationPercentage': d1VariationPercentage,
      'firstPriceVariationPercentage': firstPriceVariationPercentage,
    };
  }

  factory CompanyPrice.fromMap(Map<String, dynamic> map) {
    double? _openPrice = double.tryParse(map['openPrice'].toString());
    double? _d1VariationPercentage = double.tryParse(map['d1VariationPercentage'].toString());
    double? _firstPriceVariationPercentage = double.tryParse(map['firstPriceVariationPercentage'].toString());

    return CompanyPrice(
      map['id'] as int,
      map['companyId'] as int,
      map['companyLogo'] as String,
      map['date'] as int,
      _openPrice as double,
      _d1VariationPercentage as double,
      _firstPriceVariationPercentage as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyPrice.fromJson(String source) => CompanyPrice.fromMap(json.decode(source) as Map<String, dynamic>);

}
