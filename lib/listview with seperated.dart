import 'package:flutter/material.dart';

class Listview_with_seperated extends StatelessWidget{
  List <String> a=["data1","data2","data3"];
  List <int> b=[500,400,300];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("List"),
     ),
     body: Padding(
       padding: const EdgeInsets.only(top: 20),
       child: ListView.separated(
           itemBuilder: (context,index){
             return SizedBox(height: 80,width: 20,
               child: Card(color: Colors.pink[b[index]],
                 child: Text(a[index],style: TextStyle(fontSize: 20),),
               ),
             );
           },
           separatorBuilder: (context,index){
             return Divider(
               thickness: 8,color: Colors.black,
             );
           },
           itemCount: a.length),
     ),
   );
  }

}
void main(){
  runApp(MaterialApp(
    home: Listview_with_seperated(),
  ));
}