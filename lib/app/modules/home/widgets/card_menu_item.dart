import 'package:app/app/data/enums/visualizationType.dart';
import 'package:app/app/globalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CardMenuItem extends StatelessWidget {
  final String title;
  final String imageAsset;
  final VisualizationType type;

  const CardMenuItem(this.title, this.imageAsset, this.type);


  @override
  Widget build(BuildContext context) {
    final globalController = Get.put(GlobalController());


    return GetBuilder<GlobalController>(
          init: GlobalController(),
          builder: (_) {
            return GestureDetector(
              onTap: () => globalController.setDataVisualizationType(type),
              child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: globalController.currentDataVisualizationType == type ? Colors.orange : Colors.white60,
                ),
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          imageAsset,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text(title)
                    ],
                  ),
                ),
              ),
            ),
      );
    });

  }
}
