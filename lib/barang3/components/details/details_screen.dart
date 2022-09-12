import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halaman_login/barang3/components/body.dart';
import 'package:halaman_login/barang3/components/details/components/body.dart';
import 'package:halaman_login/barang3/prodak.dart';
import 'package:halaman_login/barang3/components/body.dart';
import 'package:halaman_login/constans.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body2(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}