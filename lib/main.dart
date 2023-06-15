import 'dart:math';

import 'package:flutter/material.dart';

/// Max value for RGB usage
const mMaxRGBBalue = 256;
void main() {
  runApp(const Main());
}

/// App container
class Main extends StatelessWidget {
  ///App container contructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

///Home Page
class HomePage extends StatefulWidget {
  /// Home Page Constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.orange),
            ),
            onPressed: () {
              setState(() {
                color = Color.fromRGBO(
                  random.nextInt(mMaxRGBBalue),
                  random.nextInt(mMaxRGBBalue),
                  random.nextInt(mMaxRGBBalue),
                  1,
                );
              });
            },
            child: const Text(
              'Hello There',
              style: TextStyle(
                fontSize: 24,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
