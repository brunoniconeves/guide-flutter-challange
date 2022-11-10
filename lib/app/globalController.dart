import 'package:app/app/data/enums/visualizationType.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  static GlobalController get to => Get.find();

  VisualizationType currentDataVisualizationType = VisualizationType.chart;


  void setDataVisualizationType(VisualizationType type){
    currentDataVisualizationType = type;
    update();
  }



}