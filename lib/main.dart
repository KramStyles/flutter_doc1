import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome To Flutter") ,
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      )
    );
  }
}
