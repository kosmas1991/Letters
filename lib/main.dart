
import 'package:flutter/material.dart';

void main() {
  runApp(const StartScreen());
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/quiz-logo.png'),
            const Text(
              'Πόσο Bubu είσαι;',
              style: TextStyle(
                  color: Color.fromARGB(253, 255, 255, 255),
                  fontSize: 20),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Κάνε το quiz',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      )),
    );
  }
}
