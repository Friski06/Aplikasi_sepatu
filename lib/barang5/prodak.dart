import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Sport Carbon",
      price: 550000,
      size: 40,
      description:
          "Sepatu ini sangat ringan karena terbuat dari bahan Karbon asli, sangat nyaman jika di pakai untuk olahraga",
      image: "assets/images/1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Black & White",
      price: 234,
      size: 41,
      description: dummyText,
      image: "assets/images/2.png",
      color: Colors.cyan),
  Product(
      id: 3,
      title: "Belt Bag",
      price: 234,
      size: 42,
      description: dummyText,
      image: "assets/images/3.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 4,
      title: "Hang Top",
      price: 234,
      size: 40,
      description: dummyText,
      image: "assets/images/6.png",
      color: Color(0xFF989493)),
  Product(
      id: 5,
      title: "Old Fashion",
      price: 234,
      size: 40,
      description: dummyText,
      image: "assets/images/8.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 39,
      description: dummyText,
      image: "assets/images/9.png",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
