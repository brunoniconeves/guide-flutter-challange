// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:app/app/modules/home/controller.dart';
import 'package:app/app/modules/home/widgets/content.dart';
import 'package:app/app/widgets/top_menu/top_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Content(),
          TopMenu(),
        ], 
      ),
    );  
  }
}

