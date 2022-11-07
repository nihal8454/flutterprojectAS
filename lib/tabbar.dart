import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("tabbar"),backgroundColor:Colors.teal.withOpacity(1),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("settings")),
                  PopupMenuItem(child: Text("help")),
                  PopupMenuItem(child: Text("about us")),
                ];
              })
            ],
            // backgroundColor: Colors.teal,
            bottom: TabBar(tabs:[Tab( icon:Icon(Icons.camera_alt),text:"camera"),
              Tab(icon:Icon(Icons.chat),text: "chat",),
              Tab(icon:Icon(Icons.alarm),text: "alarm",),
              Tab(icon:Icon(Icons.call),text:"call"),
            ])
          ),
          body: TabBarView(
            children: [
              abcd(),
              abcde(),
              abcdef(),
              abcdefg()
            ],
          ),
        ));
  }
}
class abcd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(height: 100, width: 70,
          child: Card(color: Colors.black87,
            child: Text("camera", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

class abcde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(height: 100, width: 70,
          child: Card(color: Colors.black87,
            child: Text("camera", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

class abcdef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(height: 100, width: 70,
          child: Card(color: Colors.black87,
            child: Text("camera", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
class abcdefg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(height: 100, width: 70,
          child: Card(color: Colors.black87,
            child: Text("camera", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Tabbar()));
}
