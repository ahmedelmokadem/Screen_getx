  import 'package:flutter/material.dart';
  import 'dart:io';


  class drawer extends StatelessWidget {
    const drawer({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      Size s =MediaQuery.of(context).size;
      double h=s.height,w=s.width;
      return Drawer(
        backgroundColor: const Color.fromRGBO(254, 196, 0, 1),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[

            const Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),

            ListTile(
              leading: Icon(Icons.account_balance_outlined,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('About US',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));

              },
            ),


            ListTile(
              leading: Icon(Icons.schedule_outlined,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Schedule',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //    Navigator.push(context, MaterialPageRoute(builder: (context)=>schedule(ID: widget.ID)));

              },
            ),
            ListTile(
              leading: Icon(Icons.article,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Papers',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>papers(ID: widget.ID,)));

              },
            ),
            ListTile(
              leading: Icon(Icons.payments_sharp,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Payments',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>payment(ID: widget.ID,)));
              },
            ),
            ListTile(
              leading: Icon(Icons.call,size: 35,color: Color.fromRGBO(2, 53, 100, 1),),
              title: Text('Contact us',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>contact(ID: widget.ID,Name: widget.Name,)));
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Other Courses',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>courses()));
              },
            ),



            new Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),

            ListTile(
              leading: Icon(Icons.message,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Message',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //    Navigator.push(context, MaterialPageRoute(builder: (context)=>message()));
              },
            ),


            new Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,size: 35,color: Color.fromRGBO(2, 53, 100, 1)),
              title: Text('Exit',
                style: TextStyle(fontSize: 23,color: Color.fromRGBO(2, 53, 100, 1)),),
              onTap: () {
                //    exit(0);
              },
            ),


          ],
        ),
      );
    }
  }
