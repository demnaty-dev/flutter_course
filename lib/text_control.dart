import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeIndex;

  const TextControl({Key? key, required this.changeIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        onPressed: changeIndex,
        child: const Text('Talk'),
      ),
    );
  }
}
