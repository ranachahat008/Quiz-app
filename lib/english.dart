






import 'package:flutter/material.dart';
import 'package:untitled2/practice.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  final List<String> questions = [
  "Complete the series 1,6,13,22,33",
  "Complete the series 3,7 23,95",
  "Complete the series 7,26,63,124,215,342",
  "Complete the series 165,195,255,345",
  "Complete the series 9,17,33,65",
  ];

  final List<List<String>> options = [
    ['46', '48', '49', 'none of these'],
    ['479', '455', '111', '575'],
    ['511', '123', '333', '334'],
    ['435', '390', '420', '123'],
    ['129', '22', '67', 'none of these'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Practice()));}, icon: Icon(Icons.arrow_back)),
                Text('English',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
