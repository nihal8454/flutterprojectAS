import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter1/homepage.dart';

import 'main.dart';

void main() {
  runApp(MaterialApp(home: Splash()));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://thumbs.dreamstime.com/b/empty-black-studio-room-dark-background-abstract-texture-product-showcase-spotlight-gallery-136762678.jpg"))),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "WELCOME",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Hello There!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/working-with-laptop.png",
                height: 200,
                width: 150,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Text("Login"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text("Signup"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
  bool a = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Signup Page"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Create an account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  obscuringCharacter: "*",
                  obscureText: a,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: a
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            a ? a = false : a = true;
                          });
                        },
                      ),
                      label: const Text("Password"),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  obscuringCharacter: "*",
                  obscureText: a,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: a
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            a ? a = false : a = true;
                          });
                        },
                      ),
                      label: const Text("Confirm Password"),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Already have an account?Login",
                      style: TextStyle(color: Colors.black87),
                    ),
                  )),
            ],
          ),
        ));
  }
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  bool a = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Page"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Welcome Back!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              obscuringCharacter: "*",
              obscureText: a,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: a
                        ? const Icon(Icons.remove_red_eye)
                        : const Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        a ? a = false : a = true;
                      });
                    },
                  ),
                  label: const Text("password"),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("login"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Don't have an account?Sign Up",
                  style: TextStyle(color: Colors.black87),
                ),
              ))
        ],
      )),
    );
  }
}
