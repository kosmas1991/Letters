import 'package:flutter/material.dart';

class LowerText extends StatelessWidget {
  const LowerText({
    required this.theCorrects,
    required this.theWrongs,
    required this.theColor,
    required this.theText,
    super.key,
  });

  final String theText;
  final Color theColor;
  final int theCorrects;
  final int theWrongs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(theText, style: TextStyle(fontSize: 18, color: theColor)),
          Text('Σωστές: $theCorrects  Λάθος: $theWrongs',
              style: TextStyle(color: Colors.amberAccent, fontSize: 15)),
        ],
      ),
    );
  }
}
