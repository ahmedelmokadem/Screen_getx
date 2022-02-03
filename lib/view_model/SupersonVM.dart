import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SupersonVM extends GetxController{
  TextEditingController mobile = new TextEditingController();
  bool validator = false;


  bool validate(bool v){
    mobile.text.isEmpty ? validator = true : validator = false;
    if(v==false)
      {
        validator =true;
      }
    update();
    return validator;
    v=true;
  }
  bool check(bool v)
  {
    v=!v;
    update();
    return v;

  }

}