import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget{
  void show(BuildContext context){
    showModalBottomSheet(context: context, builder: (context)=>Container(
      child: Padding(
        padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
        child: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(decoration: InputDecoration(
                label: Text("name"),
              ),keyboardType: TextInputType.name,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("pin"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0,bottom: 5),
              child: ElevatedButton(onPressed: (){}, child: Text("submit")),
            )
          ],
        ),
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottomsheet"),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
        onPressed: (){
          show(context);
        },
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Bottomsheet(),));
}