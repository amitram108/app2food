import 'package:flutter/material.dart';

class PageSelecter extends StatelessWidget {
  const PageSelecter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(255, 205, 210, 1)),
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
      ),
    );
  }
}
