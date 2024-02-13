import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/practice.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
        // child: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Colors.blue.shade100,Colors.green.shade100],
        //       begin: Alignment.bottomRight,
        //       end: Alignment.topLeft
        //     )
        //   ),
        //   child: Column(
        //    children: [
        //      Container(
        //        height: 600,
        //        decoration: BoxDecoration(
        //          image: DecorationImage(
        //            image: NetworkImage("https://i.ibb.co/Ntcyh51/b7b8786b62553d077b756b880c9b0f4f-removebg-preview.png")
        //          ),
        //        ),
        //      ),
        //
        //      Row(
        //        mainAxisAlignment: MainAxisAlignment.center,
        //        children: [
        //          Container(
        //            width: 250,
        //            decoration: BoxDecoration(
        //                borderRadius: BorderRadius.circular(8),
        //                color: Colors.indigoAccent.shade100
        //            ),
        //            child: TextButton(
        //              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Practice()));},
        //              child: Text("Let's Play",
        //                  style: TextStyle(
        //                      fontSize: 22,
        //                      fontWeight: FontWeight.bold,
        //                      color: Colors.white),
        //            ),
        //          ))
        //        ],
        //      ),
        //    ],
        //   ),
        // ),
      ),
    );
  }
}
