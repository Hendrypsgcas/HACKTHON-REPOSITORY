import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/addveg.dart';
import 'package:task/chilli.dart';
import 'package:task/curry.dart';
import 'package:task/drawer.dart';
import 'package:task/garlic.dart';
import 'package:task/tomoto.dart';




class addproduct extends StatefulWidget {
  const addproduct({super.key});

  @override
  State<addproduct> createState() => _addproductState();
}

class _addproductState extends State<addproduct> {
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
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(image: AssetImage('assets/image/img.png'), fit: BoxFit.fitWidth,),
                SizedBox( height: 50,),
                Text(
                  "Products",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Colors.orangeAccent),
                  textAlign:  TextAlign.right,
                ),
                SizedBox( height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children:[
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "tomoto",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(
                                image: AssetImage('assets/image/tomoto.png'),
                                width: 160,
                                height: 160,
                              ),
                              SizedBox(height: 10),

                              Container (
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                      builder: (context) {
                                        return addveg();
                                      },
                                    ), (route) => true);
                                  },
                                  child: Text("add",
                                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "curry",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(
                                image: AssetImage('assets/image/curry.jpg'),
                                width: 160,
                                height: 160,
                              ),
                              SizedBox(height: 10),

                              Container (
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                      builder: (context) {
                                        return addveg();
                                      },
                                    ), (route) => true);
                                  },
                                  child: Text("add",
                                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "chilli",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(
                                image: AssetImage('assets/image/chilli.jpg'),
                                width: 160,
                                height: 160,
                              ),
                              SizedBox(height: 10),

                              Container (
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                      builder: (context) {
                                        return addveg();
                                      },
                                    ), (route) => true);
                                  },
                                  child: Text("add",
                                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "garlic",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(
                                image: AssetImage('assets/image/garlic.jpg'),
                                width: 160,
                                height: 160,
                              ),
                              SizedBox(height: 10),

                              Container (
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                      builder: (context) {
                                        return addveg();
                                      },
                                    ), (route) => true);
                                  },
                                  child: Text("add",
                                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
                        ),
                      ),],),),

              ],

            ),
          ),

        ),

      ),
    );
  }
}
/**/