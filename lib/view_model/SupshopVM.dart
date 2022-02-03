import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SushopVM extends GetxController{
  TextEditingController t1 =  TextEditingController();
  TextEditingController t3 =  TextEditingController();

  bool validator = false;
  bool validator3 = false;


  bool validate(bool v){
    t1.text.isEmpty ? validator = true : validator = false;
    t3.text.isEmpty ? validator3 = true : validator3 = false;


    update();
    return validator;
    v=true;
  }

  bool validate3(bool v){
    t3.text.isEmpty ? validator3 = true : validator3 = false;

    if(v==false)
    {
      validator3=true;
    }
    update();
    return validator3;
    v=true;
  }

  bool check(bool v)
  {
    v=!v;
    update();
    return v;

  }



}