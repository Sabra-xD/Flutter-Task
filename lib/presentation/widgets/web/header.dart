import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/fonts.dart';

AppBar header() {
  return AppBar(
    leading: Center(
      child: Text(
        "Slash.",
        style: appBarStyle,
      ),
    ),
    centerTitle: true,
    title: Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.location_on),
          Column(
            children: [
              Text(
                "Location",
                style: appBarStyleLocation,
              ),
              Text(
                "City",
                style: appBarStyleCity,
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          const Icon(Iconsax.arrow_down_14),
        ],
      ),
    ),
    actions: [
      TextButton(
          onPressed: () {},
          child: Text(
            "Home",
            style: headersStyle,
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            "Cart",
            style: headersStyle,
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            "Profile",
            style: headersStyle,
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            "Settings",
            style: headersStyle,
          )),
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: IconButton(
          icon: const Icon(Iconsax.notification),
          onPressed: () {},
        ),
      ),
    ],
  );
}
