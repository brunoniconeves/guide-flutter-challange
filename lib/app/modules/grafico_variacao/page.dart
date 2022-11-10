// ignore_for_file: use_key_in_widget_constructors

import 'package:app/app/modules/grafico_variacao/grafico_variacao_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import '../../data/models/companyPrice.dart';

String moneySymbol = "R\$";
var _formatMoney = new NumberFormat.currency(locale: "pt_BR", symbol: moneySymbol);

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
                        return Center(
                          child: Card(
                            color: Colors.white60,
                            elevation: 1,
                            margin: const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
                            child: Container(
                              height: 100,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Text('${DateFormat('dd/MM/yyyy').format( DateTime.fromMillisecondsSinceEpoch(item.date * 1000))}'),
                                    top: 10,
                                    left: 10,
                                  ),

                                  Positioned(
                                    child: Text(
                                      'Valor de abertura',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    top: 40,
                                    left: 10,
                                  ),

                                  Positioned(
                                    child: Text('${_formatMoney.format(item.openPrice)}'),
                                    top: 60,
                                    left: 10,
                                  ),

                                  Positioned(
                                    child: Text(
                                      'Variação D-1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    top: 40,
                                    left: 160,
                                  ),

                                  Positioned(
                                    child: Text(
                                      '${item.d1VariationPercentage}%',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: item.d1VariationPercentage < 0 ? Colors.red : Colors.green
                                      ),
                                    ),

                                    top: 60,
                                    left: 160,
                                  ),

                                  Positioned(
                                    child: Text(
                                      'Variação Total',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    top: 40,
                                    left: 270,
                                  ),

                                  Positioned(
                                    child: Text(
                                      '${item.firstPriceVariationPercentage}%',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: item.firstPriceVariationPercentage < 0 ? Colors.red : Colors.green
                                      ),
                                    ),

                                    top: 60,
                                    left: 270,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
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

