import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens/view_model/SupshopVM.dart';
import 'Drawer.dart';
import 'cofirm_signupshop.dart';

class supshop extends StatelessWidget {
   supshop({Key? key}) : super(key: key);

  final SushopVM spshop = Get.put(SushopVM());
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   @override
  Widget build(BuildContext context) {
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
                        Icon(Icons.store_mall_directory,size: h*0.13,color: Colors.black,),

                        GestureDetector(child: Icon(Icons.more_horiz,size: h*0.05,color: Colors.black,),onTap:(){
                          _scaffoldKey.currentState?.openEndDrawer();

                        } ,),
                      ],
                    ),
                    const Center(
                      child: Text("أنشاء حساب محل",
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
                    GetBuilder<SushopVM>(
                      init: SushopVM(),
                        builder: (spshop)=>Center(child: Container(color: Colors.white,height: h/1.4,width: w/1.25,
                            child: ListView(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                       controller: spshop.t1,
                                      textAlign: TextAlign.right,
                                      decoration:  InputDecoration(
                                        hintText:"الأسم الاول" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                                        errorText: spshop.validator ? 'Please complete data':null,

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"الموبايل" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"أسم المستخدم" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"كلمة المرور" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"الايميل" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"اسم الشركة في السجل التجاري" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"رقم السجل التجاري" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"الدولة" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"المحافظة" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                      // controller: phonet,
                                      textAlign: TextAlign.right,
                                      decoration: const InputDecoration(
                                        hintText:"المنطقة" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),
                                Container(
                                  //  margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: w*0.8,
                                    child: TextField(
                                       controller: spshop.t3,
                                      textAlign: TextAlign.right,
                                      decoration:  InputDecoration(
                                        hintText:"اختر فئات المنتجات" ,
                                        // errorText: phoneValidate ? null : 'Please enter mobile number',
                                        border: InputBorder.none,
                                        hintStyle:  const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                                        errorText: spshop.validator ? 'Please complete data':null,

                                      ),
                                      onChanged: (tempo) {
                                      },)),
                                Divider(height: h*0.01,thickness: 2,indent: 20,endIndent: 20,),

                                SizedBox(height: h*0.01,),
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
                                     v= spshop.check(v);
                                    },
                                  ),
                                  data: ThemeData(
                                    //  primarySwatch: Colors.grey,
                                    unselectedWidgetColor: Colors.black,
                                    cardColor: Colors.black,
                                  ),
                                ),
                                SizedBox(height: h*0.01,),
                                GestureDetector(
                                  child: Container(
                                    height: h*0.09,
                                    width: w*0.3,
                                    child: const Center(
                                      child: Text(
                                        'أنشاء حساب جديد',
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
                                    spshop.validator = spshop.validate(v);
                                    spshop.validator3 = spshop.validate3(v);
                                    print(spshop.validator);
                                    print(spshop.validator3);

                                    if(spshop.validator==false && spshop.validator3==false)
                                    {
                                      Get.to(()=>const confrimsupshop());
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
