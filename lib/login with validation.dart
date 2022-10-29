import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class login_with_validation extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page with validation"),
        backgroundColor: Colors.black,
      ),
      body: Form(
          key: formkey,
          child: ListView(
            children: [
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Login Page",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: const Text("username"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "Enter a valid email !!!";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: const Text("password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Password length should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 70, left: 70),
                  child: SizedBox(
                    width: 50,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.black87),
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          } else {
                            Fluttertoast.showToast(
                                msg: "Invalid username / Password",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.white,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          }
                        },
                        child: const Text("Login")),
                  )),
            ],
          )),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "All Contacts",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
              color: Colors.white60,
              child: ListTile(
                title: const Text("Nihal"),
                subtitle: const Text("8136845263"),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user-avatar.png"),
                  backgroundColor: Colors.black87,
                ),
                trailing: Wrap(children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.call, color: Colors.black87),
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.black87,
                  )
                ]),
              ),
            ),
          ),
          Card(
            color: Colors.white60,
            child: ListTile(
              title: const Text("Favaz"),
              subtitle: const Text("8136846754"),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user-avatar.png"),
                backgroundColor: Colors.black87,
              ),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.call, color: Colors.black87),
                ),
                Icon(
                  Icons.message_rounded,
                  color: Colors.black87,
                )
              ]),
            ),
          ),
          Card(
            color: Colors.white60,
            child: ListTile(
              title: const Text("Shibili"),
              subtitle: const Text("8136846242"),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user-avatar.png"),
                backgroundColor: Colors.black87,
              ),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.call, color: Colors.black87),
                ),
                Icon(
                  Icons.message_rounded,
                  color: Colors.black87,
                )
              ]),
            ),
          ),
          Card(
            color: Colors.white60,
            child: ListTile(
              title: const Text("Nasib"),
              subtitle: const Text("8136845372"),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user-avatar.png"),
                backgroundColor: Colors.black87,
              ),
              trailing: Wrap(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.call, color: Colors.black87),
                ),
                Icon(
                  Icons.message_rounded,
                  color: Colors.black87,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: login_with_validation(),
  ));
}
