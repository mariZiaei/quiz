import 'package:flutter_quiz/data/qustion.dart';

List<Qustion> getQustionList() {
  var firstQustion = Qustion();
  firstQustion.QuestionTitle = 'مشهورترین  شعبده باز دنیا';
  firstQustion.QuestionImageNumber = '1';
  firstQustion.correctAnswer = 2;
  firstQustion.answerList = [
    'گری مکسون',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Qustion();
  secondQuestion.QuestionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.QuestionImageNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  var therthdQustion = Qustion();
  therthdQustion.QuestionTitle = 'کدام درخت نماد صلح است';
  therthdQustion.QuestionImageNumber = '8';
  therthdQustion.correctAnswer = 1;
  therthdQustion.answerList = ['سرو', 'زیتون', 'سیب', 'نارنج'];

  var forthQustion = Qustion();
  forthQustion.QuestionTitle = 'واحد اندازگیری الماس چیست';
  forthQustion.QuestionImageNumber = '6';
  forthQustion.correctAnswer = 3;
  forthQustion.answerList = ['گرم', 'پوند', 'سوت', 'قیراط'];
  return [
    firstQustion,
    secondQuestion,
    therthdQustion,
    forthQustion,
  ];
}
