import 'package:flutter/material.dart';

class inkwell extends StatefulWidget {
  @override
  State<inkwell> createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {
  String a = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell"),
        actions: [
          Text(""),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    a = "inkwell tapped";
                  });
                },
                onLongPress: () {
                  setState(() {
                    a = "inkwell pressed";
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Text(
                    "inkwell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  )),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(a),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: inkwell(),
  ));
}
