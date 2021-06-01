import 'question.dart';

class QuizBrain {
  int _questionNo = 0;
  int _score = 0;

  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  String getQuestion() {
    return _questionBank[_questionNo].questionText;
  }

  bool getAns() {
    return _questionBank[_questionNo].questionAns;
  }

  void nextQuestion() {
    _questionNo++;
  }

  bool isFinished() {
    if (_questionNo >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void resetQuestionNo() {
    _questionNo = 0;
    _score = 0;
  }

  void updateScore() {
    _score++;
  }

  int getScore() => _score;
}
