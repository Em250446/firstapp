import 'package:first_app/api_example/ApiExampleList.dart';
import 'package:first_app/api_example/AssignmentWeek5.dart';
import 'package:first_app/count_stateful.dart';
import 'package:first_app/counter_widget.dart';
import 'package:first_app/greeting_widget.dart';
import 'package:first_app/navigation_example/first_page.dart';
import 'package:first_app/navigation_example/second_page.dart';
import 'package:first_app/week3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Assignmentweek5());
  }
}
