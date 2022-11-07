import 'package:flutter/material.dart';

class Normal_gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("normal gridview"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.tealAccent,
            ),
            Container(
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Normal_gridview(),
  ));
}
