import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/selection.dart';
import "package:page_transition/page_transition.dart";


class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/img/1.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Splashscreen(),
        ],
      ),
    );
  }
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('assets/img/fuellogo.png',

        ),
        backgroundColor: Color(0xffF6DA42),

        nextScreen: Selection(),
      splashIconSize: 280,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: Duration(seconds: 2),

    );
  }
}

