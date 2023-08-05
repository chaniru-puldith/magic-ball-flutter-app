import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent[700],
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.tealAccent[700],
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          shakeTheBall();
        },
        child: Image.asset('images/ball$ballNo.png'),
      ),
    );
  }
  void shakeTheBall() {
    setState(() {
      ballNo = Random().nextInt(5)+1;
    });
  }
}

