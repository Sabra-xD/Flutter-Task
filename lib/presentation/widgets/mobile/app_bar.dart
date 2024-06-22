import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/fonts.dart';

AppBar appBar() {
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
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: Icon(Iconsax.notification),
      ),
    ],
  );
}
