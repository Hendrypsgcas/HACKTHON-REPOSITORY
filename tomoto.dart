import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/btomoto.dart';
import 'package:task/home.dart';
import 'package:task/profile.dart';
import 'package:task/splash.dart';
import 'package:task/us1.dart';
import 'package:task/us2.dart';

import 'drawer.dart';

class tomoto extends StatefulWidget {
  const tomoto({super.key});

  @override
  State<tomoto> createState() => _tomotoState();
}

class _tomotoState extends State<tomoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NAVAUGA SANDHAI"),
        backgroundColor: Colors.lightGreen,
        actions: [
          GestureDetector(
            child: Icon(Icons.notifications_active_outlined),
            onTap: () {
              print("Bell Pressed");
            },
          )
        ],


      ),
      drawer: appdrawer(context),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Tomoto",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage('assets/image/tomoto.png'),
                        width: 190,
                        height: 190,
                      ),
                      Text(
                        "1 KG",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "RS. 10 ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      Container (
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return btomoto();
                              },
                            ), (route) => true);
                          },
                          child: Text("BUY",
                              style: TextStyle(fontSize: 30, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          ),
                        ),),

                    ],
                  ),
                  SizedBox( height: 50,),
                  Text(
                    "PRODUCERS",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.orange),
                  ),
                  Container( child: Row( children:[
                    SizedBox(width: 50, ),

                  Column(
                    children: [
                      Text(
                        "user 1",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage('assets/image/u1.jpg'),
                        width: 120,
                        height: 120,
                      ),


                      Container (
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return us1();
                              },
                            ), (route) => true);
                          },
                          child: Text("view details",
                              style: TextStyle(fontSize: 15, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          ),
                        ),),

                    ],
                  ),
                  SizedBox( width: 50,),
                  Column(
                    children: [
                      Text(
                        "user 2",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage('assets/image/u2.jpg'),
                        width: 120,
                        height: 120,
                      ),


                      Container (
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return us2();
                              },
                            ), (route) => false);
                          },
                          child: Text("view details",
                              style: TextStyle(fontSize: 15, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          ),
                        ),),

                    ],
                  ),],),),
                ],
              ),



            ),
],
            ),
      ),
    );


  }
}