import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class animated_switcher extends StatefulWidget {
  @override
  State<animated_switcher> createState() => _animatedState();
}

class _animatedState extends State<animated_switcher> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 700,
          width: 550,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/anime4.jpg",
                width: 550,
                fit: BoxFit.cover,
              ),
              Container(
                height: 700,
                width: 550,
                color: Colors.black26,
              ),
              const Positioned(
                  left: 220,
                  top: 90,
                  child: Text(
                    "WELCOME",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                    ),
                  )),
              const Positioned(
                  left: 150,
                  top: 140,
                  child: Text(
                    "Welcome to this awesome login app.\n                 You are awesome",
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  )),
              Positioned(
                bottom: 90,
                left: 15,
                child: Row(
                  children: [
                    SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 1;
                            });
                          },
                          child: Text("Login",style: TextStyle(color: Colors.yellow),),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                formVisible = true;
                                _formsIndex = 2;
                              });
                            },
                            child: Text("Signup",style: TextStyle(color: Colors.yellow),),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))))
                  ],
                ),
              ),
              Positioned(
                bottom: 25,
                left: 180,
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.redAccent)),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.yellow),
                      )
                    ],
                  ),
                ),
              ),
              AnimatedSwitcher(
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                switchInCurve: Curves.bounceInOut,
                switchOutCurve: Curves.easeOutCirc,
                duration: Duration(milliseconds: 1700),
                child: (!formVisible)
                    ? null
                    : Container(
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: _formsIndex == 1
                                        ? Colors.teal
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: _formsIndex == 1
                                          ? Colors.yellow
                                          : Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _formsIndex = 1;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10.0),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: _formsIndex == 2
                                        ? Colors.cyan
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                  child: Text("Signup",
                                      style: TextStyle(
                                        color: _formsIndex == 2
                                            ? Colors.yellow
                                            : Colors.black,
                                      )),
                                  onPressed: () {
                                    setState(() {
                                      _formsIndex = 2;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10.0),
                                IconButton(
                                  color: Colors.white,
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    setState(() {
                                      formVisible = false;
                                    });
                                  },
                                )
                              ],
                            ),
                            Container(
                              child: AnimatedSwitcher(
                                transitionBuilder: (Widget child, Animation<double> animation) {
                                  return ScaleTransition(scale: animation, child: child);
                                },
                                switchInCurve: Curves.bounceInOut,
                                switchOutCurve: Curves.easeOutCirc,
                                duration: Duration(milliseconds: 1000),
                                child: _formsIndex == 1
                                    ? LoginForm()
                                    : SignupForm(),
                              ),
                            )
                          ],
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.yellow),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Signup",
              style: TextStyle(color: Colors.yellow),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: animated_switcher(),
  ));
}
