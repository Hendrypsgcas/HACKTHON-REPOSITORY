import 'package:task/addproduct.dart';
import 'package:task/profile.dart';
import 'package:task/signIn.dart';
import 'package:task/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart';

Widget appdrawer(BuildContext context){
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(child: Image(image: AssetImage('assets/image/logo.png')),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            )),
        ListTile(
          leading: Icon(Icons.present_to_all,color: Colors.black),
          title: Text("Splash"),
          onTap: (){
            print("splash");
            Navigator.push(context, MaterialPageRoute(builder: (context) => Splash(title: "app")));
          },
        ),

        ListTile(
          leading: Icon(Icons.account_circle_outlined,color: Colors.black),
          title: Text("Profile"),
          onTap: (){
            print("Profile");
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.man,color: Colors.black),
          title: Text("become a seller"),
          onTap: (){
            print("new seller");
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_basket_rounded,color: Colors.black),
          title: Text("add to product"),
          onTap: (){
            print("product added");
            Navigator.push(context, MaterialPageRoute(builder: (context) => addproduct()));
          },
        ),
        ListTile(
          leading: Icon(Icons.local_grocery_store_outlined,color: Colors.black),
          title: Text("logout"),
          onTap: (){
            print("logout");
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
          },
        ),


            ],




    ),
  );
}