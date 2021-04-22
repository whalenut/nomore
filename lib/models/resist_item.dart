import 'package:flutter/foundation.dart';

class ResistItem with ChangeNotifier {
  final String title;
  int counter;
  final int color;
  final DateTime created;
  final List<DateTime> events;

  ResistItem({
    @required this.title,
    @required this.counter,
    @required this.color,
    @required this.created,
    @required this.events,
  });

  void increment() {
    counter += 1;
    events.add(DateTime.now());
    notifyListeners();
  }

}
