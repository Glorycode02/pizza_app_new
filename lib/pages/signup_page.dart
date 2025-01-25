import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock_open_rounded,
              size: 72,
            ),
            const SizedBox(
              height: 34,
            ),
            const Text("Create an Account at Pizza Delivery and Buying App"),
            const SizedBox(
              height: 30,
            ),
            MyTextfield(
                controller: _usernameController,
                labelText: "Username",
                obscureText: false),
            const SizedBox(
              height: 35,
            ),
            MyTextfield(
                controller: _emailController,
                labelText: "Email",
                obscureText: false),
            const SizedBox(
              height: 35,
            ),
            MyTextfield(
                controller: _passwordController,
                labelText: "Password",
                obscureText: true),
            const SizedBox(
              height: 35,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an Account?",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child:const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
