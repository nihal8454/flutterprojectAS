import 'package:flutter/material.dart';

class Navigation_drawer extends StatefulWidget{
  @override
  State<Navigation_drawer> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation_drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children:[ UserAccountsDrawerHeader(
            accountName: Text("muhammed nihal"),
            accountEmail: Text("nihal123@gamil.com"),
            currentAccountPicture: Image.asset("assets/images/user-avatar.png"),
            otherAccountsPictures: [Image.asset("assets/images/user-avatar.png")],
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/images/snowy mountain.jpg"),
                fit: BoxFit.cover,
              )
            ),
          ),
            const ListTile(
              leading: Text("account"),
              trailing: Icon(Icons.account_circle),
            ),
            const ListTile(
              trailing: Icon(Icons.settings),
              leading: Text("settings"),
            ),
            ListTile(
              trailing:Icon(Icons.close),
              leading: Text("close"),
              onTap: (){showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text(' Alert Dialog'),
                  content: Text('Do you really want to delete?'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop(true);
                    }, child: Text("Yes")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Cancel"))
                  ],
                );
              });},
            ),
            const Divider(
              thickness: 3,
            )
         ]
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home: Navigation_drawer(),
  ));
}