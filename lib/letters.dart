import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

class Letters extends StatelessWidget {
  const Letters({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 133, 79, 227),
          body: MainScreen(),
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            centerTitle: true,
            title: Text('Πόσα γράμματα;'),
          )),
    );
  }
}
