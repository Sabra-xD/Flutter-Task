import 'package:flutter/material.dart';
import 'package:slash/constants/fonts.dart';

class CategoryCard extends StatelessWidget {
  final String type;
  final String img;

  const CategoryCard({super.key, required this.img, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(type, style: nameStyle),
            ),
          ],
        ),
      ),
    );
  }
}
