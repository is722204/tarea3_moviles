import 'package:flutter/material.dart';
import 'package:tarea3/pages/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Librería free to play'),
        ),
        body: DetailsBook(book: {})
    );
  }
}