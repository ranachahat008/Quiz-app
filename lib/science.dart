




import 'package:flutter/material.dart';

class Science extends StatefulWidget {
  const Science({super.key});

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  final List<String> _questions = [
    "Q-1. What is the source of energy for producers?",
    "Q-2. What kind of organism comes last in food chain?",
    "Q-3. Transpiration in plant is responsible for ",
    "Q-4. When plants perform photosynthesis ,What substance is produced?",
  ];

  final List<String> opt1 = ['Sun', 'Earth', 'Wind', 'none of these'];
  final List<String> opt2 =  ['Decomposers', 'Omniveres', 'Consumers', 'Producers'];
  final List<String> opt3 =  ['Releasing of water', 'Making of food', 'Losing food', 'Making of water'];
  final List<String> opt4 =  ['Oxygen and glucose', 'Water', 'Nitrogen', 'Argon'];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
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
              ...List.generate(_questions.length, (index) =>
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.grey,Colors.white]
                          ),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4),
                          child: Text(_questions[index%_questions.length],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                        ),),
                      SizedBox(
                        height: 10,
                      ),
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
                                }, child: Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(opt1[index],
                                    style: TextStyle(
                                        fontSize: 16
                                    ),)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                                ),),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    wrongSheet(context);
                                  });
                                }, child: Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(opt2[index],
                                    style: TextStyle(
                                        fontSize: 16
                                    ),)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                                ),),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    wrongSheet(context);
                                  });
                                }, child: Container(
                                width: 150,
                                  alignment: Alignment.center,
                                  child: Text(opt3[index],
                                  style: TextStyle(
                                    fontSize: 16
                                  ),)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                                ),),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    wrongSheet(context);
                                  });
                                }, child: Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Text(opt4[index],
                                    style: TextStyle(
                                        fontSize: 16
                                    ),)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll.new(Colors.indigoAccent.shade100)
                                ),),
                              SizedBox(
                                height: 10,
                              )
                              ],
                          ),
                            ],
                          ),

                        ],
                      ),
              )],
                  )
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
                      "https://t3.ftcdn.net/jpg/01/12/54/22/360_F_112542270_Sjp8zVyHcXfcR2DfNTgLshMNoMZRNJpg.jpg"),fit: BoxFit.fill)),
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
                  fit: BoxFit.fill)),
        );
      });
}

