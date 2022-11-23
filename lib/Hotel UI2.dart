import 'package:flutter/material.dart';

class hotel_detailUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height * .6,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/room2.jpg",
                    fit: BoxFit.cover,
                  )),
              const Center(
                  child: Text(
                "DETAIL",
                style: TextStyle(fontSize: 16, color: Colors.black),
              )),
              const Positioned(
                  bottom: 36,
                  left: 15,
                  child: Text(
                    "Crown Plaza \nKochi,Kerala",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                left: 15,
                bottom: 10,
                child: Container(
                  height: 22,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black26,
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "8.4/85 reviews",
                        style: TextStyle(fontSize: 12),
                      )),
                ),
              ),
              const Positioned(
                  right: 10, bottom: 10, child: Icon(Icons.favorite_border)),
            ]),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.purpleAccent[400],
                        ),
                        Icon(Icons.star, color: Colors.purpleAccent[400]),
                        Icon(Icons.star, color: Colors.purpleAccent[400]),
                        Icon(Icons.star, color: Colors.purpleAccent[400]),
                        Icon(Icons.star_border,
                            color: Colors.purpleAccent[400]),
                        Padding(
                          padding: const EdgeInsets.only(left: 270.0),
                          child: Text(
                            "\$ 200",
                            style: TextStyle(
                                color: Colors.purpleAccent[400],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.black26,
                            size: 17,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            "8 km to LuluMall",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 270.0, top: 4),
                          child: Text(
                            "/ per night",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Book Now"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.purpleAccent[400],
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 350.0),
                    child: Text(
                      "DESCRIPTION:",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, right: 20),
                    child: Text(
                      "The luxurious Crowne Plaza Kochi offers elegant and modern rooms with views of the backwaters and city. Located on the NH 47 Bypass, it features 4 food and beverage option. Crowne Plaza Kochi is 1.6 mi from Marine Drive and 4.3 mi from Ernakulam Railway Junction. Fort Kochin is 7.5 mi and Bolghatty Island is 9.3 mi from the hotel. Cochin International Airport is 14 mi away. The property is 4.3 mi from Kakkanad Info Park and 0.9 mi from Lake Shore Hospital. The Vyttila Mobility Hub Bus Station is 3.1 mi. All rooms are equipped with an ergonomic work area, flat-screen satellite TV, iPod dock and mini-bar. They also include tea/coffee making facilities and a safe. Private bathroom comes with a bathtub, shower and bathrobes.\nCrown Plaza Kochi, Kerala",
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotel_detailUI(),
  ));
}
