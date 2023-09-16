import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/data/data.dart';

import '../widgets/buttons.dart';
import '../widgets/lower_text.dart';
import '../widgets/word.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color color = Colors.black;
  String txt = ' ';
  int correctAnswers = 0;
  int wrongAnswers = 0;
  @override
  Widget build(BuildContext context) {
    Random random = Random();

    DataClass dataObj = DataClass();
    dataObj.enchantedData();

    int getRandomData() {
      return random.nextInt(dataObj.finalData.length);
    }

    int luckyNumber = getRandomData();

    void clickHandler(bool correct) {
      setState(() {
        if (correct) {
          correctAnswers++;
        } else {
          wrongAnswers++;
        }

        color = correct ? Colors.green : Colors.red;
        txt = correct ? 'Απάντησες σωστά' : 'Απάντησες λάθος';
        luckyNumber = getRandomData();
      });
    }

    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Word(
                  word: dataObj.finalData[luckyNumber].keys
                      .elementAt(0)
                      .toString()),
              Buttons(
                  data: dataObj.finalData,
                  currentNumber: luckyNumber,
                  functiones: clickHandler),
            ],
          ),
        ),
        LowerText(
          theCorrects: correctAnswers,
          theWrongs: wrongAnswers,
          theColor: color,
          theText: txt,
        ),
      ],
    );
  }
}
