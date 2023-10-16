import 'package:flutter/material.dart';
import 'package:task/home.dart';
import 'package:task/signIn.dart';

class Splash extends StatefulWidget {
  const Splash({super.key, required this.title, });
  final String title;
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/if.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child:Container(),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Align(
            alignment: Alignment.bottomCenter,
            child:/* FloatingActionButton(
              // backgroundColor: customTheme.estatePrimary,
              child: Icon(
                Icons.login, color:  ,
              ),
              onPressed: () async {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return login();
                  },
                ), (route) => false);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => GroceryList()));
              },
            ),*/
            IconButton(
              onPressed: () async {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return SignIn();
                  },
                ), (route) => false);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              color: Colors.white,
              highlightColor: Colors.black, //<-- SEE HERE
              iconSize: 50,
              icon: Icon(
                Icons.arrow_circle_right_rounded,
              ),
            ),

          ),
        ));


  }
}