import 'dart:async';

import 'package:flutter/material.dart';
import 'package:podcasic_app/screen/main_screen.dart';
import 'constant/constant.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    loadingTimePage();
  }

  loadingTimePage() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationToOnBoardPage);
  }

  navigationToOnBoardPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => onBoardPage(context)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(backgroundBlendMode: BlendMode.values[3], color: primaryBlackColor,
              gradient: RadialGradient(
                  center: const Alignment(1.2, -0.2),
                  radius: 1.2,
                  colors: <Color>[primaryPurpleColor, secondaryBlackColor])),
          child: InkWell(
            child: Stack(fit: StackFit.expand, children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/branding.png',
                    width: 300,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget onBoardPage(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.values[3],
            color: primaryBlackColor,
            gradient: RadialGradient(
                center: const Alignment(1.2, -0.2),
                radius: 1.1,
                colors: <Color>[primaryPurpleColor, secondaryBlackColor])),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/branding.png',
                width: 246,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 246,
                child: Text(
                  'Stream your favorite Podcasts and Music anywhere, and access thousands of Podcasts and Music anytime with our mobile app.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryPurpleColor,
                      elevation: 2,
                      padding: const EdgeInsets.only(left: 55),
                      fixedSize: const Size(282, 52),
                      shadowColor: primaryPurpleColor),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MainScreen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                            color: tertieryPurpleColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.play_circle,
                        size: 44,
                        color: tertieryPurpleColor,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
