import 'package:app/app/modules/grafico_variacao/grafico_variacao_controller.dart';
import 'package:app/core/values/colors.dart';
import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AtivoTitulo extends StatelessWidget {
  const AtivoTitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: AVATAR_DIAMETER,
      child: GetBuilder<GraficoVariacaoController>(
        builder: (controller){
          return Text(
              controller.symbol.toString(),
              style: TextStyle(color: ATIVO_TITULO_COLOR, fontSize: 20)
          );
        },
      ),
    );
  }
}

