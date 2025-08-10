import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application/components/button.dart';
import 'package:quiz_application/components/data/data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  int currentQuestion = 0;  
  List<String> chosenAnswers = [];

  List<Widget> renderAnswers(int index) {
    List<Widget> answerButtons = [];

    List<String> answers = questions[index]['options'];

    answers.forEach((String answer){
      Widget button = Button(
        label: answer, 
        onTap: () {

          chosenAnswers.add(answer);
         
          if((questions.length - 1)  <= currentQuestion){
            print(chosenAnswers);
            print('number of selected answers are ${chosenAnswers.length}');
            return;
          }

          setState(() {
            currentQuestion++;
          });
                    
        });
      Widget gap = Gap(12);

      answerButtons.add(button);
      answerButtons.add(gap);
    });

  return answerButtons;
}
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(questions[currentQuestion]['question'],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Gap(60),
            ...renderAnswers(currentQuestion)
            
          ],
        ),
      ),
    );
  }

}
