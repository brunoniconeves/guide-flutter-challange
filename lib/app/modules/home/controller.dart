import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  String titulo = 'Guide Mobile Challange';
  int valor = 0;

  void incrementaValor(){
    valor++;
    update();
  }
}