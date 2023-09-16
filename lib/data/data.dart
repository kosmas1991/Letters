import 'dart:math';

class DataClass {
  List<String> data = [
    'ποδήλατο',
    'ασανσέρ',
    'σχολικό',
    'σύννεφα',
    'αστραπή',
    'χαρμόσυνος',
    'ιερογλυφικά',
    'μπουντρούμι',
    'θάλασσα',
    'ποδήλατο',
    'ακέφαλος',
    'σκοταδισμός',
    'χαρτομάντιλο',
    'υπολογιστής',
  ];

  List<Map<String, List<int>>> finalData = [];

  void enchantedData() {
    Random randomObj = Random();
    bool random = randomObj.nextBool();
    bool random2 = randomObj.nextBool();
    data.map((e) {
      finalData.add({
        e: [
          //random -> false & random2 -> true
          e.length,
          random
              ? e.length - 1
              : random2
                  ? e.length - 2
                  : e.length + 2,
          random
              ? e.length + 1
              : random2
                  ? e.length - 1
                  : e.length + 1
        ]
      });
      random = randomObj.nextBool();
      random2 = randomObj.nextBool();
    }).toList();
  }
}
