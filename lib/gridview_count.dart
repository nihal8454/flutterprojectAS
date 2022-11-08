import 'package:flutter/material.dart';

class Gridview_with_count extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("gridview with count"),),
      body:GridView.count(crossAxisCount: 5,
        children: List.generate(15, (index){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/user-avatar.png"),
              )
            ),
          );
      }
      ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Gridview_with_count(),));
}
