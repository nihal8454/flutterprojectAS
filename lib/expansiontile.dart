import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Expansion_tile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("expansion tile"),),
      body: ExpansionTile(title: Text("colors"),
      subtitle: Text("expand this"),
        children: [
          ListTile(
            leading: Lottie.asset("assets/animation/success.json",width: 100,height: 150),
            title: Text("lottie"),
          ),
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.black26,),
            title: Text("black"),
          )
        ],
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(home: Expansion_tile(),));
}