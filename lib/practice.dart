

import 'maths.dart';
import 'economics.dart';
import 'history.dart';
import 'english.dart';
import 'science.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.indigoAccent.shade100,
      ),
    body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.indigoAccent.shade100
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Maths()));}, child:
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://i.ibb.co/BsMLYMz/stock-vector-back-to-school-background-with-round-hole-paper-cut-cartoon-little-boy-math-student-lea.jpg"),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Maths',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade100,
                    borderRadius: BorderRadiusDirectional.circular(20)
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => History()));}, child:
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://i.ibb.co/FBj7cJK/download.jpg"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('history',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black
                      ),),
                  ],
                )),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade100,
                    borderRadius: BorderRadiusDirectional.circular(20)
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Science()));}, child:
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://i.ibb.co/L86NQ61/download.jpg"),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Science',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                  ],
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.indigoAccent.shade100,
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => English()));},child:
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://i.ibb.co/KmKzBZK/download.jpg"),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('English',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black
                      ),),
                  ],
                ),),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade100,
                    borderRadius: BorderRadiusDirectional.circular(20)
                ),
                child: TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context) => Economis()));}, child:
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://i.ibb.co/nzGx9FJ/download.jpg"),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Economics',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                  ],
                ),),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}
