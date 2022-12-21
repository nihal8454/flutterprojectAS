import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ylist {
  String? thumbnail;
  String? videoTitle;
  String? videoDuration;
  String? avatar;
  String? channel;
  String? views;
  String? date;

  ylist(this.thumbnail, this.videoTitle, this.videoDuration, this.avatar,
      this.channel, this.views, this.date);
}

List<ylist> items = [
  ylist('assets/images/nature.jpg', 'Wonders of nature', '10.20',
      'assets/images/lion.jpg', 'PlanetEarth', '20K views', '4 years ago'),
  ylist('assets/images/nature.jpg', 'Wonders of nature', '12.00',
      'assets/images/lion.jpg', 'Bliss', '15K views', '7 years ago'),
  ylist('assets/images/nature.jpg', 'Wonders of nature', '30.19',
      'assets/images/lion.jpg', ' Mothernature', '29M views', '1 month ago'),
  ylist('assets/images/nature.jpg', 'Wonders of nature.', '7.14',
      'assets/images/lion.jpg', 'whooo', '900K views', '11 hours ago'),
];


Widget ycard(ylist model) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                border:
                const Border(bottom: BorderSide(color: Colors.black, width: 1)),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(model.thumbnail!), fit: BoxFit.cover)),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black),
                child: Text(
                  model.videoDuration!,
                  style: const TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(model.avatar!), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.videoTitle!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                    ),
                    Text('${model.channel} - ${model.views} - ${model.date!}'),
                  ],
                ),
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 11.0),
        child: Divider(
          thickness: 3,
          height: 0,
        ),
      )
    ],
  );
}

class Youtube_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
            size: 30,
          ),
        ),
        title: const Text(
          "YouTube",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Icon(
            Icons.cast_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            FontAwesomeIcons.bell,
            color: Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/zayn malik.jpg"),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child:  Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            children: [
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("All")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(child: Center(child: Text("Music")), color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              SizedBox(
                  height: 40,
                  width: 140,
                  child:
                  Card(child: Center(child: Text("Videos")), color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              SizedBox(
                  height: 40,
                  width: 140,
                  child:
                  Card(child: Center(child: Text("Teaser")), color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("Fitness")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))
                  )),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("Beauty")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))
                  )),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("Motivation")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))
                  )),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("Games")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))
                  )),
              SizedBox(
                  height: 40,
                  width: 140,
                  child: Card(
                      child: Center(child: Text("Fashion")),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.black54,
          labelStyle: TextStyle(fontSize: 15),
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.slow_motion_video_outlined),
              text: 'Shorts',
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 45,
              ),
            ),
            Tab(
              icon: Icon(Icons.subscriptions),
              text: 'Subscription',
            ),
            Tab(
              icon: Icon(Icons.video_library_rounded),
              text: 'Library',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5,),
            ycard(items[0]),
            ycard(items[1]),
            ycard(items[2]),
            ycard(items[3]),
          ],
        ),
      ),
    );
  }
}
