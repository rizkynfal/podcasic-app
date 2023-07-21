import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final urlArtist = ' https://bandsintown.com/artists/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(backgroundBlendMode: BlendMode.values[3], color: primaryBlackColor,
            gradient: RadialGradient(
                center: const Alignment(1.2, -0.3),
                radius: 1.2,
                colors: <Color>[primaryPurpleColor, secondaryBlackColor])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello, Kayla",
                style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: primaryWhiteColor, fixedSize: const Size(24, 24)),
              onPressed: () {},
              child: Stack(
                children: <Widget>[
                  const Icon(Icons.notifications),
                  Positioned(
                    top: 1,
                    left: 3,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 9,
                        maxHeight: 10,
                        maxWidth: 10,
                        minHeight: 9,
                      ),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
