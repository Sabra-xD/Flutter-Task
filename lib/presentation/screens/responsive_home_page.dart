import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/constants/colors.dart';
import '../../constants/strings.dart';
import '../../data/product.dart';
import '../../data/product_repository.dart';
import '../../domain/product_cubit.dart';
import '../widgets/shared/categories_scroll.dart';
import '../widgets/shared/horizontal_scroll_navbar.dart';

class HomePage extends StatelessWidget {
  final bool isWeb;
  final bool mobileScreen;
  const HomePage({required this.isWeb, required this.mobileScreen, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double containerHeight = 150;

    return BlocProvider(
      create: (_) => ProductCubit(ProductRepository())
        ..fetchProducts(["bestSelling", "newArrival", "recommendedForYou"]),
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: BlocBuilder<ProductCubit, List<List<Product>>>(
          builder: (context, allProducts) {
            if (allProducts.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                  horizontal: size.width * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search here...',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: containerHeight,
                      width: size.width * 0.8,
                      margin: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: CarouselSlider.builder(
                        itemCount: offers.length,
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder: (context, index, realIndex) {
                          return Image.asset(
                            "assets/images/${offers[index]}.png",
                            fit: BoxFit.contain,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 150, child: CategoriesNav()),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: allProducts.length,
                      itemBuilder: (context, categoryIndex) {
                        final productList = allProducts[categoryIndex];
                        return HorizontalNav(
                          containerHeight: containerHeight,
                          productList: productList,
                          categoryIndex: categoryIndex,
                        );
                      },
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
