import 'package:flutter/material.dart';

class ExampleUi extends StatefulWidget {
  bool? extended;
  ExampleUi({super.key, this.extended = false});

  @override
  State<ExampleUi> createState() => _ExampleUiState();
}

class _ExampleUiState extends State<ExampleUi> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void didUpdateWidget(covariant ExampleUi oldWidget) {
    super.didUpdateWidget(oldWidget);
  }
}
