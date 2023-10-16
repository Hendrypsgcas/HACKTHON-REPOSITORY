import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/home.dart';
import 'package:task/profile.dart';
import 'package:task/splash.dart';
import 'package:task/us3.dart';
import 'package:task/us4.dart';

import 'drawer.dart';

class bchilli extends StatefulWidget {
  const bchilli({super.key});

  @override
  State<bchilli> createState() => _bchilliState();
}

class _bchilliState extends State<bchilli> {
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
                        "CHILLI",
                        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.orange),
                      ),
                      SizedBox(height: 30),
                      Image(
                        image: AssetImage('assets/image/chilli.jpg'),
                        width: 190,
                        height: 190,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(24, 5, 24, 10),
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              // You can add logic here if needed
                            });
                          },

                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "ENTER IN KILOGRAM",
                            prefixIcon: Icon(
                              Icons.production_quantity_limits,
                              color: Colors.lightGreen,
                              size: 24,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5, // Adjust the border width
                              ),
                              borderRadius: BorderRadius.circular(8.0), // Adjust the border radius
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 1.5, // Adjust the border width
                              ),
                              borderRadius: BorderRadius.circular(8.0), // Adjust the border radius
                            ),

                          ),
                        ),
                      ),
                      Container (
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return home();
                              },
                            ), (route) => false);
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
                        ),
                      ),

                      SizedBox( height: 30,) ,


                      Container (
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return home();
                              },
                            ), (route) => false);
                          },
                          child: Text("ADD TO CART",
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
                ],
              ),



            ),
          ],
        ),
      ),
    );


  }
}