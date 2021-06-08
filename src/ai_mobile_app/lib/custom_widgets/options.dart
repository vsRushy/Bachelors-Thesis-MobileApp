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
      physics: BouncingScrollPhysics(),
      children: question!.options!.map((option) => _createOption(context, option)).toList(),
    );
  }

  Widget _createOption(BuildContext context, CustomOption option) {
    return _createAnswer(option);
  }

  Widget _createAnswer(CustomOption option) {
    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          Text(option.identifier!),
          SizedBox(width: 32),
          Text(option.text!),
        ],
      ),
    );
  }
}
