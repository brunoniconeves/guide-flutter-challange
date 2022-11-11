import 'package:app/app/data/models/pricePoint.dart';
import 'package:app/app/modules/grafico_variacao/widgets/chartVariacao.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/enums/visualizationType.dart';
import '../../../data/models/companyPrice.dart';
import '../../../globalController.dart';
import 'card_variacao.dart';

class Content extends StatelessWidget {
  final dynamic state;

  Content(this.state);

  @override
  Widget build(BuildContext context) {
    final globalController = Get.put(GlobalController());
    return Padding(
      padding: EdgeInsets.only(top: 100, bottom: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width * 1,
        child:
        globalController.currentDataVisualizationType == VisualizationType.table ?
        ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index){
            final CompanyPrice item = state[index];
            return CardVariacao(item);
          },
        )
            :
        Center(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
                child: ChartVariacao(state)
            )
        ),
      ),
    );
  }
}
