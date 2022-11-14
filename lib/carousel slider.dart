import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel_slider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("carousel slider"),),
    body: CarouselSlider(items: [
      Container(margin: EdgeInsets.all(6),
        // height: 80,width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/england.jpeg"),
            fit: BoxFit.fill
          )
        ),
      ),
      Container(margin: EdgeInsets.all(6),
        // height: 80,width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/russia.jpg"),
                fit: BoxFit.fill
            )
        ),
      ), Container(margin: EdgeInsets.all(6),
        // height: 80,width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/canada.jpg"),
                fit: BoxFit.fill
            )
        ),
      ),
      Container(margin: EdgeInsets.all(6),
        // height: 80,width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/australia.jpg"),
                fit: BoxFit.fill
            )
        ),
      ),
      Container(margin: EdgeInsets.all(6),
        // height: 80,width:20,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/france.jpg"),
                fit: BoxFit.fill
            )
        ),
      ),
    ], options: CarouselOptions(
      viewportFraction: 0.5,
      height: 300,
      autoPlay: true,
      aspectRatio: 2/1,
      autoPlayAnimationDuration: Duration(milliseconds: 1000),
      enlargeStrategy: CenterPageEnlargeStrategy.scale,
      autoPlayCurve: Curves.easeIn
    ),
    ),
    );
  }

}
void main(){
  runApp(MaterialApp(home: carousel_slider(),));
}