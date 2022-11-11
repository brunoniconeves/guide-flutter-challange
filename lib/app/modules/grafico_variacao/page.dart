// ignore_for_file: use_key_in_widget_constructors

import 'package:app/app/data/enums/visualizationType.dart';
import 'package:app/app/globalController.dart';
import 'package:app/app/modules/grafico_variacao/grafico_variacao_controller.dart';
import 'package:app/app/modules/grafico_variacao/widgets/card_variacao.dart';
import 'package:app/app/modules/grafico_variacao/widgets/top_menu/top_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import '../../data/models/companyPrice.dart';
import '../grafico_variacao/widgets/content.dart';



class GraficoVariacao extends GetView<GraficoVariacaoController> {

  @override
  Widget build(BuildContext context) {

        return Scaffold (
          body: controller.obx((state) {
            return (
                Stack(
                  children: [
                    Content(state),
                    const TopMenu(),
                  ],
                )
            );
          }, onError: (error){
            return Center(child: Text(error!),);
          })
    );    
  }
}

