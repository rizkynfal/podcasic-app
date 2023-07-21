import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

class FavoriteGenreScreen extends StatefulWidget {
  const FavoriteGenreScreen({super.key});

  @override
  State<FavoriteGenreScreen> createState() => _FavoriteGenreScreenState();
}

class _FavoriteGenreScreenState extends State<FavoriteGenreScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        bottom: 10,
      ),
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 10),
              constraints: const BoxConstraints(
                  minHeight: 86, minWidth: 194, maxHeight: 140, maxWidth: 296),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/favGenreJazz.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Jazz',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A perfect form of music. Contains a rhythm that has improvisation, harmony, and is played using certain musical instruments.',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 10),
              constraints: const BoxConstraints(
                  minHeight: 86, minWidth: 194, maxHeight: 140, maxWidth: 296),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/favGenreJazz.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Jazz',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A perfect form of music. Contains a rhythm that has improvisation, harmony, and is played using certain musical instruments.',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 10),
              constraints: const BoxConstraints(
                  minHeight: 86, minWidth: 194, maxHeight: 140, maxWidth: 296),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/favGenreJazz.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Jazz',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A perfect form of music. Contains a rhythm that has improvisation, harmony, and is played using certain musical instruments.',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
