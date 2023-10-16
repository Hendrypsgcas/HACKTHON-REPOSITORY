import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/chilli.dart';
import 'package:task/curry.dart';
import 'package:task/drawer.dart';
import 'package:task/garlic.dart';
import 'package:task/tomoto.dart';
import 'package:task/us1.dart';
import 'package:task/us2.dart';
import 'package:task/us3.dart';
import 'package:task/us4.dart';



class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                  child: Row(
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
                                    return tomoto();
                                  },
                                ), (route) => true);
                              },
                              child: Text("buy",
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
                                    return curry();
                                  },
                                ), (route) => true);
                              },
                              child: Text("buy",
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
                                    return chilli();
                                  },
                                ), (route) => true);
                              },
                              child: Text("buy",
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
                                    return garlic();
                                  },
                                ), (route) => true);
                              },
                              child: Text("buy",
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
                SizedBox( height: 50,),
                const Text(
                  "Producers",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Colors.orangeAccent, ),
                textAlign:  TextAlign.right,
                ),
                SizedBox( height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "user 1",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image(
                              image: AssetImage('assets/image/u1.jpg'),
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(height: 10),

                            Container (
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) {
                                      return us1();
                                    },
                                  ), (route) => true);
                                },
                                child: Text("View Details",
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "user 2",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image(
                              image: AssetImage('assets/image/u2.jpg'),
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(height: 10),

                            Container (
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) {
                                      return us2();
                                    },
                                  ), (route) => true);
                                },
                                child: Text("View Details",
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "user 3",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image(
                              image: AssetImage('assets/image/u3.jpg'),
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(height: 10),

                            Container (
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) {
                                      return us3();
                                    },
                                  ), (route) => true);
                                },
                                child: Text("View Details",
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "user 4",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image(
                              image: AssetImage('assets/image/u5.jpg'),
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(height: 10),

                            Container (
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) {
                                      return us4();
                                    },
                                  ), (route) => true);
                                },
                                child: Text("View Details",
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