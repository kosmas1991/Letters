import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/data/data.dart';

import '../widgets/buttons.dart';
import '../widgets/word.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Random random = Random();

    DataClass dataObj = DataClass();
    dataObj.enchantedData();

    int getRandomData() {
      return random.nextInt(dataObj.finalData.length);
    }

    int luckyNumber = getRandomData();

    void clickHandler(){
      setState(() {
        luckyNumber = getRandomData();
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Word(word: dataObj.finalData[luckyNumber].keys.elementAt(0).toString()),
        Buttons(data: dataObj.finalData, currentNumber: luckyNumber,functiones: clickHandler),
      ],
    );
  }
}
