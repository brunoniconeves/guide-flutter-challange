// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CompanyInfoModel {
  int id;
  String symbol;
  String friendlyName;
  String type;
  String currency;
  String companyLogo;

  CompanyInfoModel(
    this.id,
    this.symbol,
    this.friendlyName,
    this.type,
    this.currency,
    this.companyLogo
  );


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'symbol': symbol,
      'friendlyName': friendlyName,
      'type': type,
      'currency': currency,
      'companyLogo': companyLogo,
    };
  }

  factory CompanyInfoModel.fromMap(Map<String, dynamic> map) {
    return CompanyInfoModel(
      map['id'] as int,
      map['symbol'] as String,
      map['friendlyName'] as String,
      map['type'] as String,
      map['currency'] as String,
      map['companyLogo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyInfoModel.fromJson(String source) => CompanyInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
