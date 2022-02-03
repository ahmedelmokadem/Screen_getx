import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens/view_model/homeVM.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s =MediaQuery.of(context).size;
    double h=s.height,w=s.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/p1.png',width:w,height:h*0.2),
                  SizedBox(height: h*0.01,),
                  const Text("شارع الجمهورية",style: TextStyle(color: Colors.black,fontSize: 22)),
              const Text("لمعدات ومستلزمات المصانع",style: TextStyle(color: Colors.black,fontSize: 22)),
                ],
              ),
         Column(

           children:  const [
             Text("اكبر تطبيق للمعدات ومستلزمات المصانع",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22  ),),
             Text("في الوطن العربي",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22 ),),

           ],
         ),
          GestureDetector(
            child: Container(
                height: h*0.09,
                width: w*0.7,
                child: const Center(
                  child: Text(
                    'أبدء التسوق',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(254, 196, 0, 1),
                ),

              ),
            onTap: (){
              Get.to(()=>const login());
            },
          ),
          ],
      ),
    );
  }
}
