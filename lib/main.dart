import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_drawer.dart';
import 'package:pizza_app/pages/login_page.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PIZZA",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        drawer: const MyDrawer(),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Go to login page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
