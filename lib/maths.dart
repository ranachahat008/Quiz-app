



import 'package:flutter/material.dart';
import 'package:untitled2/practice.dart';

class Maths extends StatefulWidget {
  const Maths({super.key});

  @override
  State<Maths> createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  final List<String> _questions = [
  "Q-1 What is the sum of 130+125+191?",
  "Q-2 If we substract 712 from 1500,how much do we get?",
  "Q-3 50 times 8 is equal to?",
  "Q-4 110 devided by 10 is ?",
  ];

  final List<String> opt1 = ['446', '335', '444', '123'];
  final List<String> opt2 = ['788', '778', '123', '768'];
  final List<String> opt3 = ['400', '200', '100', '500'];
  final List<String> opt4 = ['410', '400', '10', '111'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maths'),
        backgroundColor: Colors.indigoAccent.shade100,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ...List.generate(4, (index) =>
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4),
                          child: Text(_questions[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ),),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  RightSheet(context);
                                });
                              }, child: Text(opt1[index]),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                            ),),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt2[index]),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                            ),),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt3[index]),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                            ),),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  wrongSheet(context);
                                });
                              }, child: Text(opt4[index]),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                          ),)],
                      ),

                    ],
                  ),
                ],
              )
              ) ],
            ),
          ),
        ),
    );
  }
}
void RightSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/01/12/54/22/360_F_112542270_Sjp8zVyHcXfcR2DfNTgLshMNoMZRNJpg.jpg"),fit: BoxFit.cover)),
        );
      });}
void wrongSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://ih1.redbubble.net/image.1353403438.9815/st,small,507x507-pad,600x600,f8f8f8.jpg"),
                  fit: BoxFit.cover)),
        );
      });
}

