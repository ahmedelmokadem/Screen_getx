import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/Home.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  )
  );
}
