


import 'package:flutter/material.dart';
import 'package:untitled2/signin.dart';


class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 340,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.indigoAccent.shade100,Colors.white],
                       begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                    ),
                  borderRadius: BorderRadiusDirectional.circular(40),
                  image: DecorationImage(
                      image: NetworkImage("https://i.ibb.co/HPpXYwr/b7b8786b62553d077b756b880c9b0f4f-removebg-preview.png")
                  ),
                ),
                child: Text(
                  "WELCOME !",
                  style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.indigoAccent.shade100,Colors.white]
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("ABOUT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                      "This quiz is designed to test your knowledge and skills when it comes to your study . By taking this quiz you'll gain a better understanding about your weaknesses and strengths and be able to develop a plan for your studies .",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));},
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade100,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
