import 'package:flutter/material.dart';

class list_with_checkbox extends StatefulWidget {
  @override
  State<list_with_checkbox> createState() => _listState();
}

class _listState extends State<list_with_checkbox> {
  var img = [
    'assets/images/android.png',
    'assets/images/flutter.jpg',
    'assets/images/apple.png',
    'assets/images/php.png',
    'assets/images/node-js.png'
  ];
  var text = ['Android', 'Flutter', 'iOS', 'PHP', 'Node-js'];
  var a = [
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
  ];

  static set isCheck(bool isCheck) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'List with CheckBox',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
          itemCount: 5,
          itemBuilder: (ctx, int index) {
            return SizedBox(
              height: 60,
              child: ListTile(
                trailing: Checkbox(
                  activeColor: Colors.red,
                  checkColor: Colors.white,
                  value: a[index],
                  onChanged: (bool? value) {
                    setState(() {
                      a[index] = value!;
                    });
                  },
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Text(
                    text[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundImage: AssetImage(img[index]),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 3,
            );
          },
        ));
  }
}

void main() {
  runApp(MaterialApp(home: list_with_checkbox()));
}