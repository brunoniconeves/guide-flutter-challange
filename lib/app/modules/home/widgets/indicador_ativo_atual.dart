import 'package:app/app/modules/home/widgets/buscar_ativo.dart';
import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';

class IndicadorAtivoAtual extends StatelessWidget {
  const IndicadorAtivoAtual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: CURVE_HEIGHT - AVATAR_DIAMETER),
          width: double.infinity,
          height: AVATAR_DIAMETER,
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo_guide.png',
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
          ),        
        ),
        Positioned(
            width: 40,
            child: BuscarAtivo(),
          )
      ]
    );
  }
}

