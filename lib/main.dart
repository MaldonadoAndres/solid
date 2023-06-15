import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class HomePage extends StatefulWidget {
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
            style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.orange)),
            onPressed: () {
              setState(() {
                color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
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
