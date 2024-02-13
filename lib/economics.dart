



  import 'package:flutter/material.dart';
import 'package:untitled2/practice.dart';


class Economis extends StatefulWidget {
    const Economis({super.key});

    @override
    State<Economis> createState() => _EconomisState();
  }

  class _EconomisState extends State<Economis> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
       body: SafeArea(
         child: Column(
           children: [
             Row(
               children: [
                 IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Practice()));}, icon: Icon(Icons.arrow_back)),
                 Text('Economics',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                 ),)

               ],
             )
           ],
         ),
       ),
      );
    }
  }
