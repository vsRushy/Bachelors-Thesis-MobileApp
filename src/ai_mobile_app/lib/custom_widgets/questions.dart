import 'package:ai_mobile_app/custom_widgets/options.dart';
import 'package:ai_mobile_app/models/custom_option.dart';
import 'package:ai_mobile_app/models/custom_question.dart';
import 'package:ai_mobile_app/models/question_category.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/step_page_indicator.dart';

class Questions extends StatefulWidget {
  final QuestionCategory? category;
  final PageController? pageController;
  final ValueChanged<CustomOption?>? onClickedOption;
  final ValueChanged<int?>? onChangedPage;

  const Questions({
    Key? key,
    required this.category,
    required this.pageController,
    required this.onClickedOption,
    required this.onChangedPage,
  }) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final _currentPageNotifier = ValueNotifier<int>(0);

  Widget _createQuestion({required CustomQuestion question}) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            question.question!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Choose the correct or most correct answer below.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 32),
          Expanded(
            child: Options(
              question: question,
              onClickedOption: widget.onClickedOption,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView.builder(
            controller: widget.pageController,
            itemCount: widget.category!.questions!.length,
            itemBuilder: (context, index) {
              final question = widget.category!.questions![index];

              return _createQuestion(question: question);
            },
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
              widget.onChangedPage!(index);
            },
          ),
        ),
        ElevatedButton(
          child: Text('Deliver test'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            minimumSize: Size(140, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.white10,
          padding: EdgeInsets.all(8),
          child: StepPageIndicator(
            itemCount: 2,
            currentPageNotifier: _currentPageNotifier,
            size: 16,
            onPageSelected: (int index) {
              if (_currentPageNotifier.value > index)
                widget.pageController!.jumpToPage(index);
            },
          ),
        ),
      ],
    );
  }
}
