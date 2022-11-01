import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  var bodies = [
    const Center(
      child: SizedBox(height: 200,width: 150,
        child: Card(
          color: Colors.black,
          child: Center(child: Text("home page",style: TextStyle(color: Colors.white),)),
        ),
      ),
    ),
    const Center(
      child: SizedBox(height: 200,width: 150,
        child: Card(
          child: Center(child: Text("search page")),
          color: Colors.tealAccent,
        ),
      ),
    ),
    const Center(
      child: SizedBox(height: 200,width: 150,
        child: Card(
          color: Colors.yellow,
          child: Center(child: Text("profile page")),
        ),
      ),
    )
  ];
  int selectedindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bottombar"),
      ),
      body:Center(child: bodies.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        backgroundColor: Colors.blueAccent[100],
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search",backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "profile",backgroundColor: Colors.yellow)
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Bottombar(),
  ));
}
