// ignore_for_file: use_key_in_widget_constructors

import 'package:app/app/modules/home/controller.dart';
import 'package:app/app/modules/home/widgets/ativo_titulo.dart';
import 'package:app/app/modules/home/widgets/curved_shape.dart';
import 'package:app/app/modules/home/widgets/menu_principal.dart';
import 'package:app/app/modules/home/widgets/indicador_ativo_atual.dart';
import 'package:app/app/modules/home/widgets/buscar_ativo.dart';
import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          MenuPrincipal(),
          CurvedShape(),
          AtivoTitulo(),
          IndicadorAtivoAtual(),          
        ],
      ),
    );  
  }
}

