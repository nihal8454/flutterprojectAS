import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Farmers_UI extends StatefulWidget {
  @override
  State<Farmers_UI> createState() => _farmersState();
}

class _farmersState extends State<Farmers_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: const Text(
              "Farmers Fresh Zone",
            ),
            actions: const [
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.0, right: 10),
                child: Text(
                  "Kochi",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                width: 5,
              )
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search for vegetables,fruites...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 9,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4.5,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF81C784)),
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "VEGETABLES",
                    style: TextStyle(color: Colors.green[400]),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF81C784)),
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text("FRUITES",
                          style: TextStyle(color: Colors.green[400]))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF81C784)),
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text("EXOTIC",
                          style: TextStyle(color: Colors.green[400]))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4.2,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF81C784)),
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text("FRESH CUTS",
                          style: TextStyle(color: Colors.green[400]))),
                ),
              ),
            ]),
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 170,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/veg1.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 170,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/veg3.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 170,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/veg2.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 190,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/fruites.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
              options: CarouselOptions(
                  viewportFraction: 0.3,
                  height: 150,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, right: 80),
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0, top: 5),
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_alarm,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text("30 MINS POLICY"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0, top: 5),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.phone_android,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("TRACEABLITY"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0, top: 5),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.yard,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("LOCAL SOURCING"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 27),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            veggrid(),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.9,
              color: Colors.red,
              child: Image.asset(
                "assets/images/fresh  poster.jpg",
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text("Best Selling Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 27)),
            ),
            const SizedBox(
              height: 5,
            ),
            vegggrid(),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 54,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: const [
                  Text(
                    "View More",
                    style: TextStyle(color: Color(0xff00c853), fontSize: 23),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                    color: Color(0xff00c853),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white10,
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(width: 280,
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.0,left: 20),
                          child: Text(
                            "We are working towards safe food-which are nutricious and hygienic as well",
                            style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150.0,top: 20),
                        child: Row(
                          children: const [
                            Text("Read More",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(
                              Icons.play_circle,
                              color: Color(0xff00c853),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 550.0),
                    child: Image.asset(
                      "assets/images/certified.jpg",
                      height: 180,
                      width: 180,
                    ),
                  )
                ],
              ),
            ),
                Container(
                  child: Column(
                    children: [
                      const Text("Get To Know Us :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0,top: 5),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("About Us",style: TextStyle(fontSize: 10)),
                            Text("|"),
                            Text("Our Farmers",style: TextStyle(fontSize: 10)),
                            Text("|"),
                            Text("Blog",style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text("Useful Links :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Priacy Policy",style: TextStyle(fontSize: 10)),
                          Text("|"),
                          Text("Return & Refund Policy",style: TextStyle(fontSize: 10)),
                          Text("|"),
                          Text("Terms & Condition",style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(FontAwesomeIcons.twitter,color: Colors.black26,),
                            Icon(FontAwesomeIcons.youtube,color: Colors.black26,),
                            Icon(FontAwesomeIcons.facebook,color: Colors.black26,),
                            Icon(FontAwesomeIcons.instagram,color: Colors.black26,)
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(height: 50,width:double.infinity,color: Color(0xff00c853),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("Copyright @ 2021 Farmers Fresh Zone.",style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text("All Right Reserved. V 2.40.21",style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.green,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: "Account"),
        ],
      ),
    );
  }
}

class veggrid extends StatelessWidget {
  List a = [
    "assets/images/fruites.jpg",
    "assets/images/veg2.jpg",
    "assets/images/nutritious.jpg",
    "assets/images/fresh cuts.jpg",
    "assets/images/flavoures.jpg",
    "assets/images/exotic.jpg"
  ];
  List b = [
    "Fruites",
    "Vegetable",
    "Fresh Cuts",
    "Nutricion chargers",
    "Packed Flavors",
    "Exotic"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: a.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              // height: MediaQuery.of(context).size.height/9,
              // width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.black45, blurRadius: 15.0)
                  ]),
              child: Column(
                children: [
                  Image.asset(
                    a[index],
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    b[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class vegggrid extends StatelessWidget {
  List ab = [
    "assets/images/carrot.jpg",
    "assets/images/banana.jpg",
    "assets/images/broccoli.jpg",
    "assets/images/salad.jpg"
  ];
  List ac = ["Carrot", "Banana", "Broccoli 200gm", "Salad"];
  List ad = ["49", "41", "119", "129"];
  List ae = ["0.5 Kg", "1.00 Kg", "1.00 Box", "1.00 Box"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: GridView.builder(
          itemCount: ab.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 190, mainAxisSpacing: 20, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 80,
              width: 80,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black38),
                  color: Colors.white30,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      ab[index],
                      fit: BoxFit.cover,
                      height: 240,
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ac[index],
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee),
                        Text(
                          ad[index],
                          style: const TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ae[index]),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("ADD"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent[700]))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Farmers_UI(),
  ));
}
