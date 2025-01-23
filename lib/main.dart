import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "PIZZA",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  "Pizza Palooza Because Ordinary Isn't an Option",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45
                  ),
                )
              ],
            ),
          )),
    );
  }
}
