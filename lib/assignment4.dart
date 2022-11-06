import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bottombar(),
  ));
}

class Chat extends StatelessWidget {
  List a = [
    "chat1",
    "chat2",
    "chat3",
    "chat4",
    "chat5",
    "chat6",
    "chat7",
    "chat8",
    "chat9",
    "chat10"
  ];
  List b = [
    "hlo,how r u",
    "wassup",
    "I'm good",
    "hello there!!",
    "I'm handsome",
    "are you working",
    "I'll be there in 5 min",
    "love u",
    "hai",
    "good night",
  ];
  List c = [
    "15:30",
    "9:10",
    "6:40",
    "13:15",
    "20:00",
    "22:19",
    "18:05",
    "23:35",
    "11:09",
    "00:20"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: a.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(a[index]),
              leading: const Icon(
                Icons.account_circle,
                size: 40,
              ),
              subtitle: Text(b[index]),
              trailing: Text(c[index]),
            );
          }),
    );
  }
}

class Status extends StatelessWidget {
  List ab = ["chat1", "chat2", "chat4", "chat5"];
  List ac = [
    "2 minutes ago",
    "30 minutes ago",
    "54 minutes ago",
    "today,17:53"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text("My Status"),
            leading: Image.asset(
              "assets/images/status.png",
              color: Colors.green[700],
            ),
            subtitle: const Text("Tap to add status update"),
          ),
          Container(
            child: Text("Recent Updates"),
            alignment: Alignment.centerLeft,
            color: Colors.black26,
            width: double.infinity,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: ab.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  title: Text(ab[index]),
                  leading: const Icon(Icons.account_circle, size: 40),
                  subtitle: Text(ac[index]),
                );
              },
              separatorBuilder: (BuildContext context, index) {
                return const Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Call extends StatelessWidget {
  List ba = ["chat6", "chat7", "chat8", "chat9", "chat10"];
  List bb = <IconData>[
    Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
    Icons.call_made,
  ];
  List color = [
    const Color(0xff075E50),
    Colors.red,
    Colors.red,
    const Color(0xff075E50),
    const Color(0xff075E50)
  ];
  List bc = [
    "6 Minutes ago",
    "28 Minutes ago",
    "(2) 48 Minutes ago",
    "(3) Today,8:30 AM",
    "Today,13:40"
  ];
  List bd = <IconData>[
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.video_call,
    Icons.video_call
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Text("Recent Calls"),
          color: Colors.black26,
          width: double.infinity,
          height: 30,
          alignment: Alignment.centerLeft,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: ba.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(ba[index]),
                leading: const Icon(Icons.account_circle, size: 40),
                subtitle: Wrap(
                  children: [
                    Icon(
                      bb[index],
                      color: (color[index]),
                    ),
                    Text(bc[index])
                  ],
                ),
                trailing: Icon(
                  bd[index],
                  color: const Color(0xff075E50),
                ),
              );
            },
            separatorBuilder: (BuildContext context, index) {
              return const Divider(
                indent: 1,
                thickness: 0.5,
                color: Colors.grey,
              );
            },
          ),
        ),
      ],
    ));
  }
}

class Bottombar extends StatefulWidget {
  @override
  State<Bottombar> createState() => _Bottombar();
}

class _Bottombar extends State<Bottombar> {
  var bodies = [Chat(), Status(), Call()];
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
        title: const Text("Whatsapp"),
        backgroundColor: const Color(0xff075E50),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          )
        ],
      ),
      body: Center(child: bodies.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: const Color(0xff075E50),
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(
              icon: (Icon(CupertinoIcons.chat_bubble_2_fill)),
              label: ("CHATS")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
              label: "STATUS"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "CALL")
        ],
      ),
    );
  }
}
