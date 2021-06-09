import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innacent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        child: Center(
            child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            // TextButton(
            //   child: Text('Restart Quiz'),
            //   // style: ButtonStyle(
            //   //     foregroundColor: MaterialStateProperty.all(Colors.blue),),
            //   style: TextButton.styleFrom(primary: Colors.orange),
            //   onPressed: resetHandler,
            // )
            // ElevatedButton(
            //   onPressed: resetHandler,
            //   child: Text('Restart Quiz'),
            //   // style: ButtonStyle(
            //   //     backgroundColor: MaterialStateProperty.all(Colors.blue),
            //   //     foregroundColor: MaterialStateProperty.all(Colors.white)),
            //   style: ElevatedButton.styleFrom(
            //       primary: Colors.blue, onPrimary: Colors.white),
            // )
            OutlinedButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.blue,
                  side: BorderSide(color: Colors.blue)),
            )
          ],
        )));
  }
}
