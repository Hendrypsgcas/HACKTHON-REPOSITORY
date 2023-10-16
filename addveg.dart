import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/home.dart';
import 'package:task/profile.dart';
import 'package:task/splash.dart';
import 'package:task/us3.dart';
import 'package:task/us4.dart';

import 'drawer.dart';

class addveg extends StatefulWidget {
  const addveg({super.key});

  @override
  State<addveg> createState() => _addvegState();
}

class _addvegState extends State<addveg> {
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
                      SizedBox(height: 90),
                      Text(
                        "ADD YOUR PRODUCT",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.brown),
                      ),
                      SizedBox(height: 30),

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
                          child: Text("ADD  ",
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