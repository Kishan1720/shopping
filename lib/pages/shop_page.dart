import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping/components/my_drawer.dart';
import 'package:shopping/components/my_product_tile.dart';
import 'package:shopping/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access Products in Shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Shop Page",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          // Cart button
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 28,
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        children: [
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shop",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Shop Subtitle
                Text(
                  "Pick from a Selected list of premium products",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          // Products List
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                // Get each individual product from shop
                final product = products[index];

                // Return as a Product tile
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
