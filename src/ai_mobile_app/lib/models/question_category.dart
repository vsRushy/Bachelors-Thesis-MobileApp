import 'package:ai_mobile_app/models/custom_question.dart';

class QuestionCategory {
  final String? name;
  final List<CustomQuestion>? questions;

  QuestionCategory({
    required this.name,
    required this.questions,
  });
}
