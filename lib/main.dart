import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome To Flutter"),
          ),
          body: Center(
            // child: Text(wordPair.asPascalCase),
            child: RandomWords(),
          ),
        ));
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Word Generator'),
      ),
      body: _buildSuggestations(),
    );
  }

  final _suggestations = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0, color: Colors.deepOrangeAccent);

  Widget _buildSuggestations() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestations.length) {
          _suggestations.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestations[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
        title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ));
  }
}
