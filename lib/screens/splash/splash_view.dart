import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:webview_app/screens/home_screen.dart';
import 'package:webview_app/screens/splash/componenets/animated_loading_text.dart';
import 'package:webview_app/screens/webview_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeScreen();
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/msh_logo.png'),
            ),
            const SizedBox(
              height: 100,
            ),
            const AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
