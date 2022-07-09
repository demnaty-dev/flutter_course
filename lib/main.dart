import 'package:flutter/material.dart';
import 'package:flutter_course/text_control.dart';
import 'package:flutter_course/text.dart' as custom_text;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Course Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  static const List<String> _texts = [
    'Hello My Friend',
    'How you doing ?',
    'Guess what !',
    'I\'m tired \u{1F614}',
    'But I\'ll be fine \u{1F604}',
    'See you next time \u{1F44B}\u{1F3FD}'
  ];

  void _changeIndex() {
    setState(() {
      _index++;
      _index %= _texts.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          custom_text.Text(
            text: _texts[_index],
          ),
          TextControl(changeIndex: _changeIndex)
        ],
      ),
    );
  }
}
