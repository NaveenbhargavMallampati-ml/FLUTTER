import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myhome extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    image : DecorationImage(image:AssetImage('assets/images/81.png'),fit:BoxFit.cover),
    ),
    child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text("Disease And Cure"),

        ),
        Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),color: Colors.teal[100],),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          //color: Colors.teal[200],
        ),
        Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),color: Colors.teal[100],),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          //color: Colors.teal[300],
        ),
        Container(
         // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),color: Colors.teal[100],),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          //color: Colors.teal[400],
        ),
        Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),color: Colors.teal[100],),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
         // color: Colors.teal[500],
        ),
        Container(
         // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),color: Colors.teal[100], ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.00),image : DecorationImage(image:AssetImage('assets/images/box.png'),fit:BoxFit.cover),),
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
         // color: Colors.teal[600],
        ),
      ],
    ),
    );
  }

}