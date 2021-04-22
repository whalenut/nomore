import 'package:flutter/foundation.dart';

class ResistItem with ChangeNotifier {
  String title;
  int counter;
  int color;
  final DateTime created;
  List<DateTime> events;

  ResistItem({
    @required this.title,
    @required this.counter,
    @required this.color,
    this.created,
    this.events = const [],
  });

  void increment() {
    color += 1;
    events.add(DateTime.now());
    notifyListeners();
  }

}
