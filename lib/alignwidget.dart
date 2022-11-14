import 'package:flutter/material.dart';

class alignwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("align widget"),
      ),
      body: Center(
        child: Container(color: Colors.black26,width: 200,height: 250,
            child: Align(
              alignment: Alignment.center,
                child: Image.asset("assets/images/food.png"))),
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(home: alignwidget(),));
}
