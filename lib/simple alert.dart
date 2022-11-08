import 'package:flutter/material.dart';
import 'package:flutter1/navigation%20drawer.dart';

class Simple_alert extends StatefulWidget{
  @override
  State<Simple_alert> createState() => _simpleState();
}

class _simpleState extends State<Simple_alert>{
  @override
  Widget build(BuildContext context) {
    return Navigation_drawer(
    );
  }
}
void main(){
  runApp(MaterialApp(home: Simple_alert(),));
}
