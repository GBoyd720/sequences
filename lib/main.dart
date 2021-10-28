import 'package:flutter/material.dart';
import 'features/sequences/presentation/pages/sequence_puzzle_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sequence Puzzle',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        accentColor: Colors.green.shade600,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SequencePuzzlePage(),
    );
  }
}
