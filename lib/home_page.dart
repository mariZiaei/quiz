import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[300],
        title: Text(
          'کوییزکویین',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/welcome.png'),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(200.0, 40.0),
                  backgroundColor: Color.fromARGB(255, 206, 98, 98)),
              onPressed: () {
                NavigatorPage(context, QuizPage());
              },
              child: Text(
                'شروع آزمون',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ))
        ],
      )),
    );
  }

  void NavigatorPage(BuildContext context, Widget page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => page));
  }
}
