import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens/view/confirm_signuperson.dart';
import 'package:screens/view_model/SupersonVM.dart';
import 'Drawer.dart';
import 'cofirm_signupshop.dart';

class superson extends StatelessWidget {
   superson({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   final SupersonVM shop = Get.put(SupersonVM());
   bool isUserNameValidate =false;

   @override
  Widget build(BuildContext context) {
    // Get.put(SupersonVM());
    bool v =false;
    Size s =MediaQuery.of(context).size;
    double h=s.height,w=s.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer:const drawer(),
      backgroundColor:  const Color.fromRGBO(210, 210, 210, 1),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50) ),color: Color.fromRGBO(254, 196, 0, 1),),
                height: h/5,
                child: ListView(

                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(child: Icon(Icons.arrow_back_ios,size: h*0.05,color: Colors.black,),onTap:(){
                          FocusScope.of(context).requestFocus(FocusNode());
                          Get.back();
                        },),
                        Icon(Icons.person,size: h*0.13,color: Colors.black,),

                        GestureDetector(child: Icon(Icons.more_horiz,size: h*0.05,color: Colors.black,),onTap:(){
                          _scaffoldKey.currentState?.openEndDrawer();

                        } ,),
                      ],
                    ),
                    const Center(
                      child: Text("أنشاء حساب مستخدم",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                      ),
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
                ListView(
                  padding: const EdgeInsets.only(bottom: 20),
                  children: [
                    GetBuilder<SupersonVM>(
                      init: SupersonVM(),
                      builder: (shop)=> Center(child: Container(color: Colors.white,height: h/1.4,width: w/1.25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Container(
                                //  margin: EdgeInsets.symmetric(vertical: 10),
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  width: w*0.8,
                                  child: TextField(
                                       controller: shop.mobile,
                                    textAlign: TextAlign.right,
                                    decoration:  InputDecoration(
                                      hintText:"رقم الموبايل" ,
                                       errorText: shop.validator ? 'Please complete data':null,
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (tempo) {
                                    },)),
                              Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                              SizedBox(height: h*0.05,),
                              Theme(
                                child: CheckboxListTile(
                                  title:Text("موافق علي الشروط والاحكام",textAlign: TextAlign.right,
                                    style:TextStyle(color:Colors.black,
                                      fontSize:h*0.02,
                                      fontWeight: FontWeight.bold,

                                    ) ,),
                                  checkColor: Colors.red,
                                  activeColor:  const Color.fromRGBO(210, 210, 210,1),
                                  value: v,
                                  onChanged: (_) {
                                      v= shop.check(v);
                                  },
                                ),
                                data: ThemeData(
                                  //  primarySwatch: Colors.grey,
                                  unselectedWidgetColor: Colors.black,
                                  cardColor: Colors.black,
                                ),
                              ),
                              SizedBox(height: h*0.05,),
                              GestureDetector(
                                child: Container(
                                  height: h*0.1,
                                  width: w*0.6,
                                  child: const Center(
                                    child: Text(
                                      'التالي',
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color:const Color.fromRGBO(254, 196, 0, 1),
                                  ),

                                ),
                                onTap: (){
                                  FocusScope.of(context).requestFocus(FocusNode());
                                  shop.validator = shop.validate(v);
                                  if(shop.validator==false)
                                    {
                                      Get.to(()=>const confrimsuperson());
                                    }

                                },
                              ),

                            ],
                          )
                      )),),

                  ],
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
