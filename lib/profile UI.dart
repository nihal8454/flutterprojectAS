import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          children: [
            Container(color: Colors.white,
              height: 350,
              width: 500,
              child: Column(
                children: [
                  const Align(
                    child: Icon(Icons.arrow_back),
                    alignment: Alignment.topLeft,
                  ),
                  Align(child: Icon(Icons.menu),alignment: AlignmentDirectional.topEnd,),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/zayn malik.jpg"),
                      radius: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0, top: 2),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 32,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                            size: 32,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blueAccent,
                            size: 32,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.indigo,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Chromicle",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "@amFOSS",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Mobile App Developer and Open source enthusiastic",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 250,
                width: 500,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: Icon(Icons.security),
                        title: Text("Privacy"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: const Icon(Icons.access_time_rounded),
                        title: const Text("Purchase History"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: const Icon(Icons.help_outline),
                        title: const Text("Help & Support"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: const Icon(Icons.manage_accounts),
                        title: const Text("Invite a Friend"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: const Icon(Icons.settings),
                        title: const Text("Settings"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        tileColor: Colors.black12,
                        dense: true,
                        leading: const Icon(Icons.logout),
                        title: const Text("Log Out"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile_UI(),
  ));
}
