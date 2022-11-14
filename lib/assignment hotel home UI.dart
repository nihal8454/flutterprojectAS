import 'package:flutter/material.dart';

class hotel_homeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            )
          ],
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(140),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Type Your Location",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "search",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 280),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Card(
                      color: Colors.pinkAccent,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Icon(
                              Icons.local_hotel,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Hotel",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Card(
                      color: Colors.blueAccent,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Icon(
                              Icons.restaurant,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Restaurent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 160,
                  child: Card(
                    color: Colors.orange,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Icon(
                            Icons.local_cafe_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Cafe",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: 900,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/room.jpg",
                          width: double.infinity,
                          fit: BoxFit.fill,
                          height: 200,
                        ),
                        const Positioned(
                          bottom: 35,
                          right: 3,
                          child: SizedBox(
                            height: 40,
                            width: 50,
                            child: Card(
                              child: Align(
                                child: Text(
                                  "\$40",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 600.0,top: 6),
                    child: Text(
                      "Awesome room near Bouddha",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 740.0,top: 3),
                    child: Text("Bouddha,Kathmandu"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Row(
                      children: const [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Text("(220 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: hotel_homeUI(),
  ));
}
