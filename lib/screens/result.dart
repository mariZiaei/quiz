import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    this.rongAnswer = 0,
    this.correctAnswer = 0,
  });
  int correctAnswer = 0;
  int rongAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[800],
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 250.0,
                  height: 250.0,
                  child: Image(
                    image: AssetImage('images/cup.png'),
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'پاسخ های غلط شما',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$rongAnswer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 72,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 200,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'پاسخ های صحیح شما',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 2, 122, 8)),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$correctAnswer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 72,
                    color: Color.fromARGB(255, 2, 146, 64),
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
