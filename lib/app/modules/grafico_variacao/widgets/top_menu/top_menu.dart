import 'package:app/app/widgets/top_menu/curved_shape.dart';
import 'package:flutter/material.dart';

import 'ativo_titulo.dart';
import '../../widgets/top_menu/indicador_ativo_atual.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CurvedShape(),
        AtivoTitulo(),
        IndicadorAtivoAtual()
      ],
    );
  }
}
