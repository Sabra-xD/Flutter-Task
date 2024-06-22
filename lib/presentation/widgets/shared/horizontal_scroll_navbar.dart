import 'package:flutter/material.dart';
import 'package:slash/constants/fonts.dart';
import 'package:slash/presentation/widgets/shared/product_card.dart';

import '../../../data/product.dart';

class HorizontalNav extends StatelessWidget {
  const HorizontalNav({
    super.key,
    required this.productList,
    required this.containerHeight,
    required this.categoryIndex,
  });

  final List<Product> productList;
  final int categoryIndex;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    double navBarWidth = MediaQuery.of(context).size.width * 0.2;
    double navBarHeight = 250;
    return SizedBox(
      width: navBarWidth,
      height: navBarHeight,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getCategoryText(categoryIndex),
                style: headersStyle,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "See All",
                    style: seeAllStyle,
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.keyboard_arrow_right))
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductCard(
                    imageUrl: productList[index].image,
                    name: productList[index].name,
                    price: productList[index].price);
              },
            ),
          ),
        ],
      ),
    );
  }

  String getCategoryText(int index) {
    if (index == 0) {
      return "Best Selling";
    } else if (index == 1) {
      return "New Arrival";
    } else if (index == 2) {
      return "Recommended For You";
    } else {
      return "";
    }
  }
}
