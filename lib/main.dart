import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const BallPage(),
  );
}

// stateless
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Ask me anything'),
        ),
        body: const Ball(),
      ),
    );
  }
}

// stateful
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
