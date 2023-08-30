import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:uiecommerce/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/icon/icon.png",
          width: 400.0,
          height: 400.0,
          fit: BoxFit.fill,
        ).animate().fadeIn(
              duration: 2000.ms,
            ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
