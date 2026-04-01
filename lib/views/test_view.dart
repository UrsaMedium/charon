import 'dart:math';

import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  Color? _randomColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test view')),
      body: Center(
        child: Column(
          children: [FilledButton(onPressed: () {}, child: Text('Boop'))],
        ),
      ),
      bottomNavigationBar: BottomAppBar(child: Container(height: 50.0)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(
          () => _randomColor = Color(
            (Random().nextDouble() * 0xFFFFFF).toInt(),
          ).withAlpha(0),
        ),
        tooltip: 'Generate new color',
        child: const Icon(Icons.add),
      ),
    );
  }
}
