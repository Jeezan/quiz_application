import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application/components/final_answer.dart';
import 'package:quiz_application/data/data.dart';
import 'package:quiz_application/views/start_screen.dart';



class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers
  });

  final List<String> chosenAnswers;

  @override
 Widget build(BuildContext context) {

 int correctAnswerCount = 0;

  for(int i = 0; i< questions.length; i++){
      if(chosenAnswers[i] == questions[i].options[0]){
        correctAnswerCount++;   
      }
  }

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
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800
                      ),),
                      Text("You got $correctAnswerCount out of ${questions.length} questions correct!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),),

                      Gap(24),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,

                        child: ListView.builder(
                          itemCount: questions.length,
                          itemBuilder: (context, index) {
                            return FinalAnswer(
                              index: index, 
                              selectedAnswer: chosenAnswers[index]);

                          }
                        )
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => StartScreen()));
                  }, 
                  child: Text("RESET QUIZ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),))
              ],
            ),
          ),
        ),
      ),
    );
  }

}
