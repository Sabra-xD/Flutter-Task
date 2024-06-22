import 'package:flutter/material.dart';
import 'package:slash/presentation/screens/responsive_home_page.dart';
import 'package:slash/presentation/widgets/web/header.dart';

import 'presentation/widgets/mobile/app_bar.dart';
import 'presentation/widgets/mobile/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const bool isWeb = bool.fromEnvironment('dart.library.js_util');
    final bool mobileScreen = screenWidth < 600; // Adjust breakpoint as needed

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      home: Scaffold(
        appBar: isWeb
            ? !mobileScreen
                ? header()
                : appBar()
            : appBar(),
        bottomNavigationBar: isWeb
            ? !mobileScreen
                ? null
                : const BottomNavBar()
            : const BottomNavBar(),
        body: HomePage(isWeb: isWeb, mobileScreen: mobileScreen),
      ),
    );
  }
}
