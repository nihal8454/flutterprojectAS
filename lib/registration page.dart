import 'package:flutter/material.dart';
import 'package:flutter1/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registrationpage extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
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
                  "Register Here!!",
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
                  controller: pass,
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
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: cpass,
                  decoration: InputDecoration(
                      label: const Text("confirm password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (password) {
                    if (password!.isEmpty ||
                        password.length < 6 ||
                        pass.text != cpass.text) {
                      return "Password should be the same";
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('registration successful'),
                                action: SnackBarAction(
                                  label: "undo",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Registrationpage()));
                                  },
                                ),
                              ),
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
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
                        child: const Text("Register")),
                  )),
            ],
          )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Registrationpage(),
  ));
}
