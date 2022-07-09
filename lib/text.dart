import 'package:flutter/material.dart' as material;

class Text extends material.StatelessWidget {
  final String text;

  const Text({material.Key? key, required this.text}) : super(key: key);

  @override
  material.Widget build(material.BuildContext context) {
    return material.Container(
      width: double.infinity,
      margin: const material.EdgeInsets.symmetric(vertical: 10),
      child: material.Text(
        style: const material.TextStyle(
          fontSize: 36,
          fontWeight: material.FontWeight.bold,
        ),
        text,
        textAlign: material.TextAlign.center,
      ),
    );
  }
}
