import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    required this.switchScreen,
    super.key,
  });

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/images/new_logo.png'),
        const Text(
          'Πόσο Bubu είσαι;',
          style: TextStyle(
              color: Color.fromARGB(253, 255, 255, 255), fontSize: 20),
        ),
        TextButton(
            //TODO: add the function
            onPressed: () {
              switchScreen();
            },
            child: const Text(
              'Κάμε το quiz',
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }
}
