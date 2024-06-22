import 'package:flutter/material.dart';
import 'package:slash/constants/fonts.dart';
import '../../../constants/strings.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int currentIndex = 0;
    return Container(
      height: size.width * 0.175,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfIcons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            //Change the index.
          },
          child: SizedBox(
            width: size.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  width: size.width,
                  height: currentIndex == index ? size.width * 0.014 : 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width * 0.01,
                ),
                Icon(
                  index == currentIndex
                      ? listofActiveIcons[index].icon
                      : listOfIcons[index].icon,
                  size: size.width * 0.076,
                  color: Colors.black,
                ),
                Text(
                  listOfIcons[index].label,
                  style: currentIndex == index ? pricingStyle : nameStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
