import 'package:flutter/material.dart';
import 'package:quiz_application/components/button.dart';
import 'package:quiz_application/views/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff013568),
              Color(0xff014285),
              Color(0xff0260C2),
              Color(0xff0268D1),
            ],
          ),
        ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50),

            Text(('quiz time').toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 36
            ),),

            Image.asset('lib/images/home_image.png', width: 304,),

            Button(label: 'Start quiz',
            onTap: () {
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => QuestionScreen()));
            },),

            SizedBox(height: 50),

          ],
        ),
      ),

       
      ),
    );
  }
}
