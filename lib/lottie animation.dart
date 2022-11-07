import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottie_animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("lottie animation"),
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/animation/success.json",width: 100,height: 130),
            Lottie.network("https://assets2.lottiefiles.com/packages/lf20_xgwzkywz.json",width: 130,height: 160),
            Lottie.network("https://assets2.lottiefiles.com/packages/lf20_Y8UeVt.json",width: 160,height: 200)
          ],
        ),
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(home: lottie_animation(),));
}