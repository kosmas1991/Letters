import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen: switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
        //TODO
        child: activeScreen,
      )),
    );
  }
}
