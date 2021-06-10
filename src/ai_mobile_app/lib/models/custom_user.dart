class CustomUser {
  final String? uid;

  CustomUser({this.uid});
}

class UserData {
  final String uid;

  final int testId;
  final double mark;
  final int correctAnswers;
  final int incorrectAnswers;

  UserData({
    required this.uid,
    required this.testId,
    required this.mark,
    required this.correctAnswers,
    required this.incorrectAnswers,
  });
}
