import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.tealAccent,
          ),
          Positioned(
              left: 30,
              top: 30,
              child: Container(
                color: Colors.green,
                height: 150,
                width: 100,
              )),
          Positioned(
              right: 30,
              bottom: 30,
              child: Container(
                color: Colors.black,
                height: 150,
                width: 100,
              ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Stackwidget(),
  ));
}
