import 'package:app/core/values/menu_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuscarAtivo extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  BuscarAtivo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8),
        width: double.infinity,
        height: AVATAR_DIAMETER,
        padding: const EdgeInsets.all(0),
        child: GestureDetector(
          onTap: () => {
            Get.defaultDialog(
              title: "Pesquisar Ativo",
              middleText: "Código do ativo",
              content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: _controller,
              keyboardType: TextInputType.text,
              maxLines: 1,
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.white ),
                ),
                focusColor: Colors.white,
                labelText: 'Código do Ativo',
                hintMaxLines: 1,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 231, 231, 231), width: 4.0)
                )
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {                
                  Get.back();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
              ),
              child: const Text(
                'Pesquisar',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            )
          ],
        ),
              backgroundColor: Colors.teal,
              titleStyle: TextStyle(color: Colors.white),
              middleTextStyle: TextStyle(color: Colors.white),
              radius: 30
            )          
          },
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(41, 35, 34, 1),
            ),
            child: Icon(
              Icons.search,
              color: Colors.deepOrangeAccent[100],
              size: 20,
            ),
          ),
        ),        
      );      
  }  
}

