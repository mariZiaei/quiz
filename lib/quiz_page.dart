import 'package:flutter/material.dart';
import 'package:flutter_quiz/constant/Constant.dart';
import 'package:flutter_quiz/data/qustion.dart';
import 'package:flutter_quiz/screens/result.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showqustionIndex = 0;
  Qustion? selectedQustion;
  bool isFinalAnswer = false;
  int corectAnswer = 0;
  int rongAnswer = 0;
  @override
  Widget build(BuildContext context) {
    selectedQustion = getQustionList()[showqustionIndex];
    String qustionImageIndex =
        getQustionList()[showqustionIndex].QuestionImageNumber!;

    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[300],
        title: Text(
          'سوال${showqustionIndex + 1}  از ${getQustionList().length - 1} ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            width: double.infinity,
          ),
          Image(
            image: AssetImage('images/$qustionImageIndex.png'),
            height: 300,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            getQustionList()[showqustionIndex].QuestionTitle!,
            style: TextStyle(
              fontSize: 19,
            ),
            textAlign: TextAlign.center,
          ),
          ...List.generate(4, (index) => getQustionOption(index)),
          if (isFinalAnswer)
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    maximumSize: Size(350, 50),
                    backgroundColor: Color.fromARGB(255, 237, 103, 94)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext Context) => ResultScreen(
                            correctAnswer: corectAnswer,
                            rongAnswer: rongAnswer,
                          )));
                },
                child: Text(
                  'نمایش نتایج',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 242, 242)),
                ))
        ]),
      ),
    );
  }

  Widget getQustionOption(int index) {
    return ListTile(
      title: Text(
        selectedQustion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQustion!.correctAnswer == index) {
          corectAnswer++;
        } else {
          rongAnswer++;
        }
        if (showqustionIndex == getQustionList().length - 1) {
          isFinalAnswer = true;
        }
        setState(() {
          if (showqustionIndex < getQustionList().length - 1) {
            showqustionIndex++;
          }
        });
      },
    );
  }
}
