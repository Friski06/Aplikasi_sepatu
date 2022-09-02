import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:halaman_login/constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Snekers",
            style: Theme.of(BuildContext)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // Category(),
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset("assets/images/sneakers.jpg"),
        )
      ],
    );
  }
}
