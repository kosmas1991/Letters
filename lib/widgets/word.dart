import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  const Word({
    required this.word,
    super.key,
  });

  final String word;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      word,
      style: TextStyle(
        fontSize: 50,
        color: Colors.amber,
      ),
    ));
  }
}
