import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final CustomQuestion? question;
  final ValueChanged<CustomOption?>? onClickedOption;

  const Options({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: question!.options!
          .map((option) => _createOption(context, option))
          .toList(),
    );
  }

  Widget _createOption(BuildContext context, CustomOption option) {
    final color = _getColor(question!, option);

    return GestureDetector(
      onTap: () {
        return onClickedOption!(option);
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              _createAnswer(option),
              if (question!.currentOption != null)
                _createSolution(question!.currentOption!, option),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createAnswer(CustomOption option) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(option.identifier!),
          SizedBox(width: 32),
          Text(option.text!),
        ],
      ),
    );
  }

  Color? _getColor(CustomQuestion question, CustomOption option) {
    bool isOptionSelected = option == question.currentOption;

    if (!isOptionSelected) {
      return Colors.lightBlue[100];
    } else {
      return option.isCorrect! ? Colors.lightGreen[500] : Colors.red[500];
    }
  }

  Widget _createSolution(
      CustomOption currentOption, CustomOption correctOption) {
    if (currentOption == correctOption) {
      return Text(
        question!.solution!,
      );
    } else {
      return Container();
    }
  }
}
