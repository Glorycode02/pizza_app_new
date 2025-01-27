import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productimage;
  const ProductCard({super.key, required this.productimage});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset(
            productimage
          )
        ],
      ),
    );
  }
}
