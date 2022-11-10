import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  bool typeViewMenuIsVisible = false;


  void toggleTypeViewMenu(){
    if(!typeViewMenuIsVisible){
      typeViewMenuIsVisible = !typeViewMenuIsVisible;
      update();
    }
  }



}