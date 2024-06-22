import 'package:flutter/material.dart';
import 'package:slash/constants/fonts.dart';
import 'package:slash/presentation/widgets/shared/categories_card.dart';

import '../../../constants/strings.dart';

class CategoriesNav extends StatelessWidget {
  const CategoriesNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "All Categories",
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
                  icon: const Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                img: categories[index]["img"]!,
                type: categories[index]["type"]!,
              );
            },
          ),
        ),
      ],
    );
  }
}
