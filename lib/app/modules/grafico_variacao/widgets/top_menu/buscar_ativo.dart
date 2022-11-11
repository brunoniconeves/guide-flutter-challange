import 'package:app/app/data/enums/visualizationType.dart';
import 'package:app/app/modules/grafico_variacao/grafico_variacao_controller.dart';
import 'package:app/app/modules/grafico_variacao/page.dart';
import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/app/globalController.dart';


class BuscarAtivo extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override


  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8),
        width: double.infinity,
        height: AVATAR_DIAMETER,
        padding: const EdgeInsets.all(0),
        child: GestureDetector(
          onTap: () => {
            Get.back()
          },
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(41, 35, 34, 1),
            ),
            child: Icon(
              Icons.chevron_left,
              color: Colors.deepOrangeAccent[100],
              size: 20,
            ),
          ),
        ),        
      );      
  }  
}

