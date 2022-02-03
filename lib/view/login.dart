import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens/view/signup_person.dart';
import 'package:screens/view/signup_shop.dart';

import 'cofirm_signupshop.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s =MediaQuery.of(context).size;
    double h=s.height,w=s.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
      Container(width:w,height: h/3, child: Image.asset('assets/images/p3.png'),color: const Color.fromRGBO(254, 196, 0, 1)),
          SizedBox(height: h*0.05,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                  GestureDetector(
                    child: Container(width: w*0.4,height: h/8,decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(90),bottomLeft: Radius.circular(90)),
                        color: Color.fromRGBO(254, 196, 0, 1),
                    ),
                      child:  Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.person,size: 50,),
                            Text(
                              'حساب مستخدم',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(()=> superson());
                    },
                  ),
                  GestureDetector(
                    child: Container(width: w*0.4,height: h/8,decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(90),bottomRight: Radius.circular(90)),
                      color:Colors.red,
                    ), child:
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  const [
                          Icon(Icons.store_mall_directory,size: 50,color: Colors.white,),
                          Text(
                            'حساب محل',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ],
                      ),
                    ),),
                    onTap: (){
                      Get.to(()=> supshop());
                    },
                  ),
                ],),
                height: h/8,
              ),
          SizedBox(height: h*0.03,),
          GestureDetector(
            child: Container(
              height: h/8.5,
              width: w*0.8,
              child: const Center(
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color:Colors.black87,
              ),

            ),
            onTap: (){
              Get.to(()=>const confrimsupshop());
            },
          ),
          SizedBox(height: h*0.03,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              Container(
                alignment: Alignment.center,
                width: w/2,
                child: const Text(
                  'نسيت كلمة المرور',
                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 22,decoration: TextDecoration.underline, ),
                ),
              ),
            ],
          ),

      ],),
    );
  }
}
