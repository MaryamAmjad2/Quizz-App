import 'package:quizler/Ques.dart';

class QuizBrain {
  int _Qnum = 0;

  List<Question> _Quest = [
    Question(q: 'Do cats live 9 lifes?', a: true),
    Question(q: 'Do cats have 6 legs ?', a: false),
    Question(q: 'Is your Country Safe for women?', a: true),
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'Bats are blind.', a: false),
    Question(
        q: 'The blue whale is the biggest animal to have ever lived.', a: true),
    Question(q: 'Mount Everest is the tallest mountain in the world.', a: true),
    Question(q: "Infants have less bones than adults.", a: false),
  ];

  String getQuestion() {
    return _Quest[_Qnum].ques;
  }

  bool getAnswere() {
    return _Quest[_Qnum].ans;
  }

  void getnextQuestion() {
    if (_Qnum < _Quest.length - 1) {
      _Qnum = _Qnum + 1;
    } else {
      _Qnum = 0;
    }
  }
}
