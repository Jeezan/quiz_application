import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application/data/data.dart';

class FinalAnswer extends StatelessWidget {
  const FinalAnswer({
    super.key,
    required this.index,
    required this.selectedAnswer});

  final String selectedAnswer;
  final int index;

  @override
  Widget build(BuildContext context) {

    final bool isCorrect =  selectedAnswer == questions[index].options[0];

    return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:EdgeInsets.all(12),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: isCorrect? 
                      Colors.white :
                      Colors.red.shade300,
                    borderRadius: BorderRadius.circular(50)

                  ),
                  child: Container(
                    child: Center(
                      child: Text((index + 1).toString(),
                      style: TextStyle(
                        color:isCorrect? 
                          Color(0xff0268D1):
                          Colors.white,
                        fontWeight: FontWeight.w800
                      ),),
                    ),
                  ),
                ),
                
                const Gap(12),

                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        questions[index].questions,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      if(!isCorrect)
                      Text(questions[index].options[0],
                        style: TextStyle(
                          color: Colors.green.shade500,
                          fontSize: 16
                        ),
                      ),
                  
                  
                      Text(selectedAnswer,
                        style: TextStyle(
                          color: isCorrect? 
                          Colors.white:
                          Colors.red.shade300,
                          fontSize: 16
                        ),
                      ),
                  
                      Gap(20)
                    ],
                  
                  ),
                ),
              ],
            );
      }
    }