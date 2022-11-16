import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Blog_UI(),
  ));
}

List<Map> a = [
  {
    "title": "The purpose of our lives is to be happy.",
    "author": "Dalai Lama",
    "time": "1 min read"
  },
  {
    "title": "Life is what happens when you're busy making other plans.",
    "author": "John Lennon",
    "time": "1 min read"
  },
  {
    "title": "Get busy living or get busy dying.",
    "author": "Stephen King",
    "time": "1 min read"
  },
  {
    "title": "You only live once, but if you do it right, once is enough.",
    "author": "Mae West",
    "time": "1 min read"
  },
  {
    "title":
        "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
    "author": "Thomas A. Edison",
    "time": "1 min read"
  },
];

class Blog_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(Icons.category_outlined),
          title: const Text("Catagories"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          bottom: const TabBar(indicatorColor: Colors.teal, tabs: [
            Tab(
              text: "For You",
            ),
            Tab(
              text: "Design",
            ),
            Tab(
              text: "Beauty",
            ),
            Tab(
              text: "Education",
            ),
            Tab(
              text: "Entertainment",
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.teal,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
                backgroundColor: Colors.black)
          ],
        ),
        body: TabBarView(children:<Widget> [
          ListView.separated(
            itemCount: a.length,
            padding: const EdgeInsets.all(13.0),
            itemBuilder: (context, index) {
              return _BuildItem(index);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 15.0),),
            const Text("Tab 2"),
            const Text("Tab 3"),
            const Text("Tab 4"),
            const Text("Tab 5"),
        ]),
      ),
    );
  }
}

Widget _BuildItem(int index) {
  Map aa=a[index];
  return Container(color: Colors.white,
    child:Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0,top: 10),
          child: Container(width: 125,height: 110,
            color: Colors.greenAccent,
          ),
        ),
        Container( padding: const EdgeInsets.only(left: 20.0,top: 16),
            margin: const EdgeInsets.all(8.0),width: 160,height: 130,
          child: Image.asset(("assets/images/happy.jpg"),fit: BoxFit.cover,),
        ),
   const SizedBox(width: 10.0),
  Expanded(
  child: Padding(
    padding: const EdgeInsets.only(left: 270.0,top: 40),
    child: Column(
    children: <Widget>[
    Align(alignment: Alignment.topLeft,
      child: Text(
      aa["title"],
      style: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      ),
      ),
    ),
      Align(alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text.rich(TextSpan(
            children: [
              const WidgetSpan(child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.purpleAccent,
              )),
              const WidgetSpan(
                child: SizedBox(width: 15.0),
              ),
              TextSpan(
                  text: aa["author"],
                  style: const TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600)),
              const WidgetSpan(
                child: SizedBox(width: 20.0),
              ),
              const WidgetSpan(
                child: SizedBox(width: 5.0),
              ),
              TextSpan(
                text: aa["time"],
              )
            ]
          ),
            style: const TextStyle(height: 2),
          ),
        ),
      )
        ],
      ),
  ),
  )
  ])
  );
}
