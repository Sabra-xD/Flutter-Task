import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash/constants/fonts.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // bool isLiked = false;
    double containerWidth = minMaxContainerWidth(size.width * 0.2);
    return Align(
      child: Container(
        width: containerWidth,
        margin: const EdgeInsets.only(right: 12, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    // width: containerWidth,
                    height: containerWidth * 0.8,
                    // height: containerWidth * 0.8,
                    width: containerWidth,
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: size.height * 0.1,
                    right: -size.width * 0.03,
                    child: IconButton(
                      icon: const Icon(
                        Iconsax.heart_circle5,
                        color: Colors.grey,
                        // isLiked ? Iconsax.heart5 : Iconsax.heart_circle5,
                        // color: isLiked ? Colors.red : Colors.grey,
                      ),
                      onPressed: () => {},
                    ))
              ],
            ),
            Text(name, style: nameStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EGP $price",
                  style: pricingStyle,
                ),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      size: 22,
                      Icons.add_circle,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

double minMaxContainerWidth(double sizedWidth) {
  if (sizedWidth > 173) {
    return 173;
  }
  if (sizedWidth < 125) {
    return 125;
  }
  return sizedWidth;
}
