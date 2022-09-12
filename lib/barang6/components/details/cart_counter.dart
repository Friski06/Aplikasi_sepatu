import 'package:flutter/material.dart';
import 'package:halaman_login/constans.dart';

class CardCounter extends StatefulWidget {
  @override
  _CardCounterstate createState() => _CardCounterstate();
}

class _CardCounterstate extends State<CardCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            setState(() {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({required icon, required Null Function() press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        // padding: EdgeInsets.zero,
        // shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(13),
        // ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
