import 'package:flutter/material.dart';

class customappbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.pink,
            title: Text("custom appbar"),
            floating: true,
            pinned: true,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(backgroundColor: Colors.pink,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.trip_origin)
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(
    home: customappbar(),
  ));
}