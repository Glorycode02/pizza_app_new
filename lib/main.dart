import 'package:flutter/material.dart';
import 'package:pizza_app/pages/login_page.dart';
import 'package:pizza_app/pages/signup_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pizza App",
      routes: {
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignupPage(),
      },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PIZZA",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Pizza Palooza Because Ordinary Isn't an Option",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(12),),
                child: const Center(
                  child: Text("Go to login page",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
