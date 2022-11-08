import 'package:flutter/material.dart';

class ecommerceui extends StatelessWidget {
  List icon = [
    Icons.message,
    Icons.account_circle,
    Icons.ac_unit,
    Icons.back_hand,
    Icons.add_circle
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:BottomNavigationBar(
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: Colors.white70,
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront_sharp,
              size: 20,
            ),
            label: '.',

          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.messenger_outline,
                size: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                size: 20,
              ),
              label: ''),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                  child: Container(
                      height: 25,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12.withOpacity(0.15)),
                      child: const TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            hintText: 'Search Product',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                            )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8),
                  child: Container(
                      width: 24,
                      height: 35,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black54,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12.withOpacity(0.15),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8),
                  child: Container(
                      width: 24,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12.withOpacity(0.15),
                      ),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black54,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Container(
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple),
                child: Padding(
                  padding: const EdgeInsets.only(right: 180, top: 16),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                        EdgeInsets.only(right: 15.0, bottom: 5),
                        child: Text(
                          'A Summer Surprise ',
                          style:
                          TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                      ),
                      Text(
                        'Cashback 20%',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.85),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 19),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: SizedBox(
                      height: 54,
                      width: 60,
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: const Icon(
                          Icons.flash_on_rounded,
                          color: Colors.deepOrangeAccent,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: 54,
                      width: 60,
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: const Icon(
                          Icons.receipt_long_sharp,
                          color: Colors.deepOrangeAccent,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 54,
                      width: 60,
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: const Icon(
                          Icons.videogame_asset_rounded,
                          color: Colors.deepOrangeAccent,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 54,
                      width: 60,
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: const Icon(
                          Icons.card_giftcard_rounded,
                          color: Colors.deepOrangeAccent,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 54,
                      width: 60,
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: const Icon(
                          Icons.diamond_sharp,
                          color: Colors.deepOrangeAccent,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 1),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                        width: 32,
                        child: Text(
                          'Flash Deal',
                          style: TextStyle(
                              fontSize: 13, color: Colors.black54),
                        )),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 38, right: 10.0, bottom: 14),
                    child: Text(
                      'Bill',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 40.0, right: 10, bottom: 14),
                    child: Text(
                      'Game',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: SizedBox(
                        width: 26,
                        child: Text(
                          'Daily Gift',
                          style: TextStyle(
                              fontSize: 12, color: Colors.black54),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, bottom: 14),
                    child: Text(
                      'More',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Row(
                children: [
                  Text(
                    'Special for you',
                    style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 136.0, top: 1),
                    child: Text(
                      'See More',
                      style: TextStyle(color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 16),
                    child: Stack(children: [
                      Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red),
                          height: 80,
                          width: 170,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/phonetable.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 15),
                              child: Text(
                                'Smartphone',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 35.0, top: 5),
                              child: Text(
                                '18 Brands',
                                style: TextStyle(color: Colors.white60),
                              ),
                            )
                          ],
                        )
                      ]),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 16),
                    child: Stack(children: [
                      Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red),
                          height: 80,
                          width: 170,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/fashion.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 15),
                              child: Text(
                                'Fashion',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.0, top: 5),
                              child: Text(
                                '24 Brands',
                                style: TextStyle(color: Colors.white60),
                              ),
                            )
                          ],
                        )
                      ]),
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0, top: 30),
              child: Row(
                children: [
                  Text(
                    'Popular Product',
                    style: TextStyle(
                        letterSpacing: 0.01,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 136.0),
                    child: Text(
                      'See More',
                      style: TextStyle(color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10),
              child: Row(
                children: [
                  Stack(children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      height: 90,
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'assets/images/joystick.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      child: Text(
                        "Gadgets",
                        style: TextStyle(color: Colors.white),
                      ),
                      bottom: 5,
                      left: 13,
                    ),
                  ]),
                  Stack(children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13)),
                      height: 90,
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'assets/images/activewear.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      child: Text(
                        "Active Wear",
                        style: TextStyle(color: Colors.black87),
                      ),
                      bottom: 5,
                      left: 13,
                    ),
                  ]),
                  Stack(children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13)),
                      height: 90,
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'assets/images/sneaker.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      child: Text(
                        "Sneakers",
                        style: TextStyle(color: Colors.white),
                      ),
                      bottom: 5,
                      left: 13,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ecommerceui(),
  ));
}
