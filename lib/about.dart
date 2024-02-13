import 'package:flutter/material.dart';
import 'package:untitled2/practice.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text('OoMcO',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/5FYVcPz/flat-people-asking-questions-illustration-23-2148910626.png")
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value == null || value.isEmpty){
                     return "Please enter ome text" ;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter you name",
                    labelStyle: TextStyle(
                      color: Colors.indigoAccent.shade100,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Practice()));},
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade100,
                    borderRadius: BorderRadiusDirectional.circular(5)
                  ),
                    child: Text('Start',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    )))
          ],
        ),
      ),
    );
  }
}
