import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(LaunchPadApp());
}

class LaunchPadApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to this Flutter Firebase Starter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LaunchPadHomePage(),
    );
  }
}

class LaunchPadHomePage extends StatefulWidget {
  @override
  _LaunchPadHomePageState createState() => _LaunchPadHomePageState();
}

class _LaunchPadHomePageState extends State<LaunchPadHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LaunchPad Flutter Firebase'),
      ),
      body: Center(
        child: RandomWords(),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
