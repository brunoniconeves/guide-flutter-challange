// ignore_for_file: use_key_in_widget_constructors

import 'package:app/app/modules/grafico_variacao/grafico_variacao_controller.dart';
import 'package:app/app/modules/grafico_variacao/widgets/card_variacao.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import '../../data/models/companyPrice.dart';



class GraficoVariacao extends GetView<GraficoVariacaoController> {

  @override
  Widget build(BuildContext context) {
        return Scaffold (
          appBar: AppBar(
            title: Text('${Get.parameters['codigoAtivo']}')
          ),
          body: controller.obx((state) {
            return (
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (_, index){
                        final CompanyPrice item = state[index];
                        return CardVariacao(item);
                      },
                    ),
                  ),
                )
            );
          }, onError: (error){
            return Center(child: Text(error!),);
          })
    );    
  }
}

