import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Logo
          const Icon(
            Icons.lock_open_rounded,
            size: 72,
          ),
          const SizedBox(
            height: 24,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.store,
                  ),
                  title: Text("Products",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Cart",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),

          // Logout button
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
