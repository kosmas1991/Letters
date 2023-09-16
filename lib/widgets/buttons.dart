import 'package:flutter/material.dart';

import 'button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.functiones,
    required this.currentNumber,
    required this.data,
    super.key,
  });
  final void Function() functiones;
  final List<Map<String, List<int>>> data;
  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons(),
    );
  }

  List<Widget> buttons() {
    final List<Button> list = [];
    list.add(Button(
        func: () {
          functiones();
        },
        answer: data[currentNumber].values.elementAt(0)[0].toString()));
    list.add(Button(
        func: () {
          functiones();
        },
        answer: data[currentNumber].values.elementAt(0)[1].toString()));
    list.add(Button(
        func: () {
          functiones();
        },
        answer: data[currentNumber].values.elementAt(0)[2].toString()));
    list.shuffle();
    return list;
  }
}
