// ignore_for_file: use_key_in_widget_constructors

import 'package:app/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (_) {
        return Scaffold (
          appBar: AppBar(
            title: Text('Get.find<Controller>().titulo'),
          ),
          body: Center(
            child: Text(
              'Valor: teste',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        );
      }
    );    
  }
}

