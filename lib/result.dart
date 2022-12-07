// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;
  result(this.resultscore, this.resetHandler);

  String get resultphrase {
    var resulttext = 'Test Completed !';
    if (resultscore == 8) {
      resulttext = "Great!";
    } else if (resultscore == 4) {
      resulttext = 'fair!';
    } else {
      resulttext = 'Fail';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
