class Questions{

  final String questions;
  final List<String> options;

  const Questions({
    required this.questions,
    required this.options
    });

  List<String> get answers{

    List<String> randomAnswer = List.from(options);
    randomAnswer.shuffle();
    return randomAnswer;
  }

}

 