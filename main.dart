import 'package:flutter/material.dart';
import 'package:magic_pot/changing_numbers.dart';

void main() => runApp(MagicPot());

class MagicPot extends StatefulWidget {
  @override
  _MagicPotState createState() => _MagicPotState();
}

class _MagicPotState extends State<MagicPot> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Win the magic pot!!'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ChangingNumbers(),
        ),
      ),
    );
  }
}

