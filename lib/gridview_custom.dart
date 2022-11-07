import 'package:flutter/material.dart';

class Gridview_with_custom extends StatelessWidget {
  List a = [
    "assets/images/canada.jpg",
    "assets/images/canada.jpg",
    "assets/images/canada.jpg",
    "assets/images/canada.jpg",
    "assets/images/canada.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("gridview with custom"),
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(a[index],fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),elevation: 5,margin: EdgeInsets.all(7),
              
              );
            },
            childCount: a.length,
          )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Gridview_with_custom(),
  ));
}
