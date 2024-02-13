
import 'package:flutter/material.dart';
import 'package:untitled2/about.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               height: 5,
             ),
             Padding(
               padding: const EdgeInsets.only(right: 14.0, top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     height: 35,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(16)
                     ),
                     child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => About()));}, child: Text("skip",
                     style: TextStyle(
                       color: Colors.white
                     ),)),
                   )
                 ],
               ),
             ),
             SizedBox(
               height: 40,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Create an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27
                  ),),
                ),
               ],
             ),
             SizedBox(
               height: 20,),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: "Enter your Email",
                   labelStyle: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.indigoAccent.shade100
                   )
                 ),
               ),
             ),
             SizedBox(
               height: 20,),

             Padding(
               padding: const EdgeInsets.all(12.0),
               child: TextFormField(
                 validator: (value){
                   if(value == null || value.isEmpty){
                     print("please enter some Text");
                   }
                 },
                 decoration: InputDecoration(
                     labelText: "Create a new password",
                   labelStyle: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.indigoAccent.shade100
                   )
                 ),
               ),
             ),
             SizedBox(
               height: 20,),
             Row(
               children: [
                 Checkbox(
                     value: isChecked,
                     onChanged: (newValue){
                   setState(() {
                     isChecked = newValue  ;});},
                 activeColor: Colors.blue,
                 ),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Text("I have read the Privacy Agreement .",
                       style: TextStyle(
                         fontSize: 14
                       ),),
                     ],
                   ),
                 )
               ],
             ),
             SizedBox(
               height: 50,
             ),
             TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => About()));},
                 child: Container(
                   alignment: Alignment.center,
                   height: 40,
                   width: 150,
                   decoration: BoxDecoration(
                     color: Colors.indigoAccent.shade200,
                     borderRadius: BorderRadius.circular(4)
                   ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("Sign in",
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: Colors.white
                         ),),
                         Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                       ],
                     ))),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Already have an account?"),
                 TextButton(onPressed: (){}, child: Text('Log in'))
               ],
             )
           ],
         ),
       ),
     ),
    );
  }
}


