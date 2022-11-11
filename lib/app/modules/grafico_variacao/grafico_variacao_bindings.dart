import 'dart:io';

import 'package:app/app/data/repositories/company_repository.dart';
import 'package:app/app/data/repositories/i_company_repository.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'grafico_variacao_controller.dart';

class GraficoVariacaoBindings implements Bindings {
  @override
  void dependencies(){
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    Get.put(dio);
    Get.put<ICompanyRepository>(CompanyRepository(Get.find()));
    Get.put(GraficoVariacaoController(Get.find()));
  }
}