import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: "PI",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            children: [
              TextSpan(
                text: "Z",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green),
              ),
              TextSpan(
                text: "ZA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/image1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Welcome to Pizza! 🍕, get your favourite pizza delivery on our Web!!!",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Your perfect delivery on time is our mission🔥🔥🔥🔥,Lets work together to get onto our perfect company!!!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Text.rich(
                  TextSpan(
                    text: "Top ",
                    style: TextStyle(fontSize: 30),
                    children: [
                      TextSpan(
                          text: "Products",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.green))
                    ],
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
