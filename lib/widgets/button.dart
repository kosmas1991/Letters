import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.func,
    required this.answer,
    super.key,
  });

  final String answer;
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color.fromARGB(255, 77, 48, 171)),
        child: TextButton(
            onPressed: func,
            child: Text(
              answer,
              style: TextStyle(fontSize: 50, color: Colors.amber),
            )),
      ),
    );
  }
}
