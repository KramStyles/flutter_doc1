
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
          title: const Text("Welcome To Flutter") ,
        ),
        body: const Center(
          child: Text('Hello Dear')
        ),
      )
    );
  }
}
