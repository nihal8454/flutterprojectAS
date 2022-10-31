import 'package:flutter/material.dart';

class Listview_with_builder extends StatelessWidget {
  List<String> datas = ["1", "2", "3", "4", "5"];
  List<int> colorcodes = [600,500, 400,300,200];
  List<String> years = ["2019", "2020", "2021", "2021", "2022"];
  List<String> subtl = [
    "Action,Thriller",
    "Adventure,Fantasy",
    "Comedy,Historical",
    "Crime,Horror",
    "Romance,Comedy"
  ];
  List img = [
    ("assets/images/camera_movie.png"),
    ("assets/images/camera_movie.png"),
    ("assets/images/camera_movie.png"),
    ("assets/images/camera_movie.png"),
    ("assets/images/camera_movie.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 75,
                width: 20,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.red[colorcodes[index]],
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Movie${datas[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      leading: Image.asset(img[index]),
                      trailing: Text(
                        "${years[index]}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 6),
                        child: Text(
                          "${subtl[index]}",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    )),
              );
            }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Listview_with_builder(),
  ));
}
