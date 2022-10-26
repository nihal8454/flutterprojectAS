import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login page"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("login page"),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password) ,
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
              )),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("login")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  child: const Text("not a user?register here"),
                  onPressed: () {}),
            )
          ],
        ),
      ),

    );
  }
}
