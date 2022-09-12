import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halaman_login/barang6/components/body.dart';
import 'package:halaman_login/constans.dart';
import 'package:halaman_login/user.dart';

class HomeScreen6 extends StatefulWidget {
  const HomeScreen6({Key? key}) : super(key: key);

  @override
  State<HomeScreen6> createState() => _HomeScreen6();
}

class _HomeScreen6 extends State<HomeScreen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => User()));
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
