import 'package:flutter/material.dart';
import 'package:nomore/models/resist_item.dart';

List<ResistItem> DUMMY_DATA = [
  ResistItem(
    title: "Stop Smoking",
    counter: 0,
    color: Colors.green.value,
    created: DateTime.now(),
  ),
  ResistItem(
    title: "Stop eating candy",
    counter: 0,
    color: Colors.orange.value,
    created: DateTime.now(),
  ),
  ResistItem(
    title: "Stop using social media",
    counter: 0,
    color: Colors.blue.value,
    created: DateTime.now(),
  ),
  ResistItem(
    title: "Stop snacking",
    counter: 0,
    color: Colors.red.value,
    created: DateTime.now(),
  ),
];
