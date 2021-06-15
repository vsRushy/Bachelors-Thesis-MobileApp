class CustomUser {
  final String? uid;

  CustomUser({this.uid});
}

class UserData {
  final String uid;

  int experience;
  int points;

  UserData({
    required this.uid,
    required this.experience,
    required this.points,
  });
}
