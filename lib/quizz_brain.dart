import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
    Question(questionText: 'Did you wake up earlier?', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
