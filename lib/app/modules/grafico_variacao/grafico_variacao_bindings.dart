import 'package:app/app/data/repositories/company_repository.dart';
import 'package:app/app/data/repositories/i_company_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'grafico_variacao_controller.dart';

class GraficoVariacaoBindings implements Bindings {
  @override
  void dependencies(){
    Get.put(Dio());
    Get.put<ICompanyRepository>(CompanyRepository(Get.find()));
    Get.put(GraficoVariacaoController(Get.find()));
  }
}