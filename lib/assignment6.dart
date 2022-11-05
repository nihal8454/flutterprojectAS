import 'package:flutter/material.dart';

class profileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.black87,
        actions: const [Icon(Icons.more_vert)],
        title: const Center(child: Text("Profile")),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/snowy mountain.jpg",
                  fit: BoxFit.cover, height: 300, width: double.infinity),
              Padding(
                padding: const EdgeInsets.only(top: 300, bottom: 10),
                child: Container(
                  height: 254,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 80, left: 420, bottom: 10),
                      child: Text(
                        "Zayn Malik",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(left: 430),
                      child: Text(
                        "Model/Singer",
                        style:
                            TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 170,
                left: 400,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 105,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/zayn malik.jpg"),
                    radius: 100,
                  ),
                ),
              ),
              Positioned(
                top: 265,
                left: 180,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.red),
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 265,
                right: 180,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.blue),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: profileUI(),
  ));
}
