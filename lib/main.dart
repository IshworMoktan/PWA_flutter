import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:webview_app/screens/splash/splash_view.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  MaterialColor createMaterialColor(Color color) {
    List<int> strengths = <int>[
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int strength in strengths) {
      final double ds = strength / 900;
      swatch[strength] = Color.fromRGBO(
        r + ((color.red - r) * ds).round(),
        g + ((color.green - g) * ds).round(),
        b + ((color.blue - b) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }

  @override
  Widget build(BuildContext context) {
    HexColor primaryColor = HexColor('#2e0693');
    MaterialColor primarySwatch = createMaterialColor(primaryColor);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WebViewApp',
      theme: ThemeData(
        primarySwatch: primarySwatch,
      ),
      home: const SplashView(),
    );
  }
}
