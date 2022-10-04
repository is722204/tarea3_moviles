import 'package:flutter/material.dart';
import 'package:tarea3/pages/details.dart';
import 'package:tarea3/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DetailsBook(book: {})
    );
  }
}