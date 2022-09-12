import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Barang Kamu",
              //style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
