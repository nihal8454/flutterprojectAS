import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "a",
    routes: {
  "a" :(context)=>firstScreen(),
      "a second":(context)=>secondscreen(),
      "a third":(context)=>thirdscreen(),
  },
  ));
}

class firstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("firstscreen"),
     ),
     body: Center(
       child: Padding(
         padding: const EdgeInsets.only(top: 100.0,bottom: 40),
         child: Column(
          children:[ ElevatedButton(
           child: Text("to second"),
          onPressed: (){
             Navigator.pushNamed(context,"a second");
          },
         ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(onPressed: (){Navigator.pushNamed(context,"a third");}, child: Text("to third")),
            )
         ]),
       ),
     ),
   );
  }

}
class secondscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("second screen"),
     ),
     body: Center(
       child: Padding(
         padding: const EdgeInsets.only(top: 200.0),
         child: ElevatedButton(
           child: Text("press"),
           onPressed: (){Navigator.pop(context);},
         ),
       ),
     ),
   );
  }

}
class thirdscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("third screen"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: ElevatedButton(
            child: Text("press"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}