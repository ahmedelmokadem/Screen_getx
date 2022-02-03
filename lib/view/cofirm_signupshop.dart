import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Drawer.dart';

class confrimsupshop extends StatelessWidget {
  const confrimsupshop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    Size s =MediaQuery.of(context).size;
    double h=s.height,w=s.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer:const drawer(),
      backgroundColor:  const Color.fromRGBO(210, 210, 210, 1),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50) ),color: Color.fromRGBO(254, 196, 0, 1),),
              height: h/5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(child: Icon(Icons.arrow_back_ios,size: h*0.05,color: Colors.black,),onTap:(){
                          Get.back();
                        },),
                        Icon(Icons.store_mall_directory,size: h*0.15,color: Colors.black,),

                        GestureDetector(child: Icon(Icons.more_horiz,size: h*0.05,color: Colors.black,),onTap:(){
                          _scaffoldKey.currentState?.openEndDrawer();

                        } ,),
                      ],
                    ),


                ],
              ),
            ),
          ),
          Expanded(
            flex:4,
            child: Stack(children: [
              Column(
                children: [
                  Expanded(flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50) ),color: Color.fromRGBO(254, 196, 0, 1),),
                        )),
                  Expanded(flex: 4,child: Container()),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Container(color: Colors.white,height: h/1.3,width: w/1.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        const Text("تم التسجيل بنجاح",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
                        ),
                        Column(
                          children: const [
                          Text("بانتظار تفعيل الحساب من جانب",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                          ),
                          Text("ادارة تطبيق",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                          ),
                          Text("شارع الجمهورية",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                          ),
                        ],),
                        Image.asset('assets/images/p4.png')
                      ],
                    )
                  )),
                ],
              )
            ],),
          )
        ],
      ),
    );
  }
}
