import 'package:flutter/material.dart';

class CardUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:30,left: 230),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Home",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/home.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Camera",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/photo-camera.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Card(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Mute",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/mute.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 10),
                  child: Card(
                    color: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/email.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Card(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Trifold",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/trifold.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Card(
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Cardiogram",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/cardiogram.png"),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Call",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/telephone.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Alarm",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/alarm.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Contact",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/contact.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Bookmark",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/bookmark.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 15,left: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            leading: Image.asset("assets/images/location.png"),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Card(
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                        width: 400,
                        height: 75,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                          child: ListTile(
                            trailing: const Text(
                              "Charity",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset("assets/images/charity.png"),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CardUI(),
  ));
}
