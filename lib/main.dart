import 'package:basic_landing_webpage/src/my_webpage.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    MaterialApp(
      title: "Basic landing webpage",
      home: MyWebpage(),
    ),
  );
}
