import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application/components/button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

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
            ]
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Question text here.. ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white
              ),
            ),

            Gap(60),
            Button(label: 'Answer 1'),
            
            Gap(16),
            Button(label: 'Answer 2'),
            
            Gap(16),
            Button(label: 'Answer 3'),
            
            Gap(16),
            Button(label: 'Answer 4'),
            
          ],
        ),
      ),
    );
  }
}