import 'package:app/app/data/models/comapanyInfoModel.dart';
import 'package:app/app/data/models/companyPrice.dart';
import 'package:dio/dio.dart';

import 'i_company_repository.dart';

class CompanyRepository implements ICompanyRepository {
  final Dio _dio;
  final String baseUrl = "https://192.168.68.110:5000/guide/company";

  CompanyRepository(this._dio);

  @override
  Future<CompanyInfoModel> getCompanyInfo(String symbol) async {
    try{
      final response = await _dio.get('$baseUrl/$symbol/info');
      print('Company Info: ${response.data}');
      CompanyInfoModel _companyInfo = CompanyInfoModel.fromMap(response.data);
      return _companyInfo;
    } catch (e){
      print(e);
      rethrow;
    }

  }

  @override
  Future<List<CompanyPrice>> getCompanyPriceHistory (String symbol) async  {
    try{
      final response = await _dio.get('$baseUrl/${symbol}/priceHistory');
      print('Company Info: ${response.data}');

      return response.data.map<CompanyPrice>((e) => CompanyPrice.fromMap(e)).toList();
    } catch (e){
      print(e);
      rethrow;
    }
  }

  @override
  Future<CompanyPrice> getLastPrice(String symbol) async {
    try{
      final response = await _dio.get('$baseUrl/${symbol}/info');
      print('Company Info: ${response.data}');
      CompanyPrice _companyPrice = CompanyPrice.fromMap(response.data);
      return _companyPrice;
    } catch (e){
      print(e);
      rethrow;
    }
  }
}
