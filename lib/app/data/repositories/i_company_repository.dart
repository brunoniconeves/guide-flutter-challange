import 'package:app/app/data/models/companyPrice.dart';

import '../models/comapanyInfoModel.dart';

abstract class ICompanyRepository {
  Future<CompanyInfoModel> getCompanyInfo(String symbol);
  Future<CompanyPrice> getLastPrice(String symbol);
  Future<List<CompanyPrice>> getCompanyPriceHistory(String symbol);
}