import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggered_gridview extends StatelessWidget{
  List<StaggeredTile> _cardTile =const <StaggeredTile>[
    StaggeredTile.count(3,1),
    StaggeredTile.count(2,1),
    StaggeredTile.count(2,2),
    StaggeredTile.count(2,3),
    StaggeredTile.count(2,3),
  ];
  final List<Widget> _listTile =<Widget>[
    backgroundtile(backgroundcolor:Colors.red,iconData:Icons.home),
    backgroundtile(backgroundcolor:Colors.green,iconData:Icons.call),
    backgroundtile(backgroundcolor:Colors.teal,iconData:Icons.menu_book),
    backgroundtile(backgroundcolor:Colors.yellow,iconData:Icons.mail),
    backgroundtile(backgroundcolor:Colors.purple,iconData:Icons.message_rounded),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("staggered gridview"),
    ),
     body: StaggeredGridView.count(
       crossAxisCount: 5,
       mainAxisSpacing: 3,
       crossAxisSpacing: 3,
       staggeredTiles: _cardTile,
       children: _listTile,
     ),
   );
  }
}
class backgroundtile extends StatelessWidget{
  final Color? backgroundcolor;
  final IconData? iconData;
  backgroundtile({this.backgroundcolor,required this.iconData});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundcolor,
      child: Icon(iconData,color: Colors.blue,),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home: Staggered_gridview(),
  ));
}