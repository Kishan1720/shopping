import 'package:flutter/material.dart';
import 'package:shopping/models/product.dart';

class Shop extends ChangeNotifier {
  // Products for sale
  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description:
          "Item Description, Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      imagePath: 'assets/1.png',
    ),

    // Product 2
    Product(
      name: "Product 2",
      price: 59.99,
      description:
          "Item Description, Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      imagePath: 'assets/2.png',
    ),

    // Product 3
    Product(
      name: "Product 3",
      price: 29.99,
      description:
          "Item Description, Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      imagePath: 'assets/3.jpg',
    ),

    // Product 4
    Product(
      name: "Product 4",
      price: 79.99,
      description:
          "Item Description, Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      imagePath: 'assets/4.jpg',
    ),
  ];

  // User Cart
  List<Product> _cart = [];

  // Get Products List
  List<Product> get shop => _shop;

  // Get User Cart
  List<Product> get cart => _cart;

  // Add Item to Cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // Remove Item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
