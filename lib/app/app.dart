import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ingressos Br',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorDark: Colors.black, brightness: Brightness.dark),
      home: SplashScreenFirst(),
    );
  }
}

class SplashScreenFirst extends StatelessWidget {
  const SplashScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          Text(
            'Ingressos Br',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: Duration(seconds: 2),
      nextScreen: SplashScreenAnime(),
    );
  }
}

class SplashScreenAnime extends StatelessWidget {
  const SplashScreenAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/animations/ticket.json'),
      backgroundColor: Colors.black,
      splashIconSize: 1000,
      duration: 4000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: Duration(seconds: 2),
      nextScreen: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ingressos Br',
        ),
        centerTitle: true,
      ),
    );
  }
}
