import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productimage;
  final String productName;
  final double price;
  final double discount;

  const ProductCard({
    super.key,
    required this.productimage,
    required this.productName,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    final double discountedPrice = price - (price * (discount / 100));

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              productimage,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),

          // Product Details
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // Price and Discount
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Discounted Price
                    Text(
                      "\$${discountedPrice.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),

                    // Original Price (strikethrough if discount exists)
                    if (discount > 0)
                      Text(
                        "\$${price.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),

                // Discount Badge
                if (discount > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "-${discount.toStringAsFixed(0)}% OFF",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                const SizedBox(height: 15),

                // Add to Cart Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle "Add to Cart" functionality
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$productName added to cart!'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
