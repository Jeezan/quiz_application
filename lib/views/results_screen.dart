import 'package:flutter/material.dart';
import 'package:quiz_application/data/data.dart';
import 'package:quiz_application/views/start_screen.dart';



class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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
                      Text("RESULTS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800
                      ),),
                      Text("You got 8 out of ${questions.length} questions correct!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),),

                      ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Text('You got 8 out of ${questions.length} questions correct!',
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              )
                            );
                      },)
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
