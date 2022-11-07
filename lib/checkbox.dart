import 'package:flutter/material.dart';

class Check_box extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_CheckState();
}

class _CheckState extends State<Check_box>{
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("check box"),
      ),
      body: Column(
        children: [
          Checkbox(value: ischecked, onChanged: (bool? value){
            setState(() {
              ischecked =value!;
            });
          })
        ],
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Check_box(),));
}