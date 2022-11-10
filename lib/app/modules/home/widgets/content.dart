

// ignore_for_file: non_constant_identifier_names

import 'package:app/app/data/enums/visualizationType.dart';
import 'package:app/app/modules/home/widgets/card_menu_item.dart';
import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class Content extends StatelessWidget {
  final controller = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => controller.toggleTypeViewMenu());
    return GetBuilder<Controller>(
      builder: (_) {
        return SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32, CURVE_HEIGHT, 32, 32),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Seja bem vindo ao app do Guide Challange! Escolha o tipo de visualização e depois pesquisa o ativo desejado.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 60,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _.typeViewMenuIsVisible ? 1.0 : 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardMenuItem(
                      'Gráfico de Variação',
                      'assets/images/chart_menu.png',
                      VisualizationType.chart
                    ),
                    CardMenuItem(
                        'Tabela de Variação',
                        'assets/images/tabela_menu.png',
                        VisualizationType.table
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}