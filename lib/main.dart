import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage("https://thumbs.dreamstime.com/b/wild-flowers-plant-summer-autumn-nature-background-banner-website-55976971.jpg")
          )
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.incomplete_circle_outlined,
              //   color: Colors.lightBlue,
              //   size: 70,
              // ),
              ///fetching image from asset way1
               Image.asset("assets/images/food.png",height: 400,width: 250,),

              ///fetching image from asset way2
              // const Image(image: AssetImage("assets/images/food.png")),

              const Text("MYAPP",style: TextStyle(fontSize: 40,color: Colors.yellow, ),)
            ],
          ),
        ),
      ),
    );
  }
}

