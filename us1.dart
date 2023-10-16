import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/bcurry.dart';
import 'package:task/btomoto.dart';
import 'package:task/home.dart';
import 'package:task/profile.dart';
import 'package:task/splash.dart';

import 'drawer.dart';

class us1 extends StatefulWidget {
  const us1({super.key});

  @override
  State<us1> createState() => _us1State();
}

class _us1State extends State<us1> {
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
                        "user 1",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.orange),
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage('assets/image/u1.jpg'),
                        width: 190,
                        height: 190,
                      ),
                      Text(
                        "RAM KUMAR",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " KRISHNAGIRI - 635001 ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " RATING : 4.5 ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),



                    ],
                  ),
                  SizedBox( height: 50,),
                  Text(
                    "HIS PRODUCTES",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container( child: Row( children:[
                    SizedBox(width: 50, ),
                    Column(
                      children: [
                        Text(
                          "TOMATO",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Image(
                          image: AssetImage('assets/image/tomoto.png'),
                          width: 120,
                          height: 120,
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
                          "curry",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Image(
                          image: AssetImage('assets/image/curry.jpg'),
                          width: 120,
                          height: 120,
                        ),


                        Container (
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                builder: (context) {
                                  return bcurry();
                                },
                              ), (route) => true);
                            },
                            child: Text("BUY",
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