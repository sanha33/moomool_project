
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moomool/Model/questions.dart';


class Questioncontroller extends GetxController {

  var items = ''.obs;
  var count = 0.obs;

  var question = <Questions>[].obs;

  /*
  final textcontroller = TextEditingController();
  final textcontroller1 = TextEditingController();

  final book = Book().obs;


  createText() {

  //  items = texcontroller.text.obs;

    book.update((b){
      book.value.title= texcontroller.text.obs;
      book.value.content= texcontroller1.text.obs;
    });


  update();

  }*/

  increament(){
    count ++;
  }

}


class Questions {
  final String title;
  final String description;

  Questions(this.title, this.description);
}

