import 'package:ai_mobile_app/models/custom_option.dart';

class CustomQuestion {
  final String? question;
  final List<CustomOption>? options;
  final String? solution;
  bool? isLocked;
  CustomOption? currentOption;

  CustomQuestion({
    required this.question,
    required this.options,
    required this.solution,
    this.isLocked = false,
    this.currentOption,
  });
}
