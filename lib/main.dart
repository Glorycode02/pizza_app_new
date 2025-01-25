import 'package:flutter/material.dart';
import 'package:pizza_app/pages/login_page.dart';
import 'package:pizza_app/pages/signup_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pizza App",
      routes: {
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignupPage(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

//  final  List _imagePath = [
// "assets/images/image1.jpg"
// "assets/images/image2.jpg"
// "assets/images/image3.jpg"
// "assets/images/image4.jpg"
//   ];

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
            const Text.rich(
                //   TextSpan(
                //     text: "Pizza Palooza Because Ordinary Isn't an Option",
                //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)"
                //   )
                TextSpan(
                    text: "Pizza",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                    children: [
                  TextSpan(
                    text: "Palooza",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 45),
                  ),
                  TextSpan(
                      text: "Because Ordinary Isn't an Option",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 45))
                ])),
            // Expanded(
            //   child: GridView.builder(
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2,
            //           crossAxisSpacing: 20,
            //           mainAxisSpacing: 20),
            //       itemCount: _imagePath.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             image: DecorationImage(
            //               image: AssetImage("assets/image${index + 1}.jpg"),
            //               fit: BoxFit.cover
            //             ),
            //           ),
            //         );
            //       }),
            // ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Go to login page",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
