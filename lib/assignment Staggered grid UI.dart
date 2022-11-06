import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class staggeredgridviewUI extends StatelessWidget {

  List<StaggeredTile> cardtile = [
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 1.3),
    const StaggeredTile.count(1, 3),
    const StaggeredTile.count(2, 1.4),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Anime Characters '),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: StaggeredGridView.count(
          staggeredTiles: cardtile,
          crossAxisCount: 5,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: [
            SizedBox(
              height: 300,
              width: 240,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset(
                        'assets/images/anime1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        title: const Text(
                          'Levi Ackerman',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 59.0),
                                child: Text(
                                  'Anime:Attack On Titan(AOT)',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 80.0),
                                child: Text(
                                  'Released:7 April 2013',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 240,
              width: 200,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 2.5,
                      child: Image.asset(
                        'assets/images/anime2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        title: const Text(
                          'Saitama ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 72.0),
                                child: Text('Anime:One Punch Man',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 59.0),
                                child: Text('Released:4 October 2015',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 260,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.4,
                      child: Image.asset(
                        'assets/images/anime3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        title: const Text(
                          ' Satoru Gojo',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 76.0),
                                child: Text('Anime:Jujutsu Kaisen',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 59.0),
                                child: Text('Released:3 October 2020',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 260,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 2.3,
                      child: Image.asset(
                        'assets/images/anime4.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        title: const Text(
                          'Tanjiro Kamado',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 75.0),
                                child: Text('Anime:Demon Slayer',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 72.0),
                                child: Text('Released:6 April 2019',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
    home: staggeredgridviewUI(),
  ));
}
