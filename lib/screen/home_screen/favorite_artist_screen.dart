import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

class FavoriteArtistScreen extends StatefulWidget {
  const FavoriteArtistScreen({super.key});

  @override
  State<FavoriteArtistScreen> createState() => _FavoriteArtistScreenState();
}

class _FavoriteArtistScreenState extends State<FavoriteArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        bottom: 10,
      ),
      child: SizedBox(
        height: 132,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(right: 10),
                  constraints: const BoxConstraints(
                      minHeight: 86,
                      minWidth: 80,
                      maxHeight: 114,
                      maxWidth: 114),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/artistRex.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Rex Orange Country',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(right: 10),
                  constraints: const BoxConstraints(
                      minHeight: 86,
                      minWidth: 80,
                      maxHeight: 114,
                      maxWidth: 114),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/artistRex.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Rex Orange Country',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(right: 10),
                  constraints: const BoxConstraints(
                      minHeight: 86,
                      minWidth: 80,
                      maxHeight: 114,
                      maxWidth: 114),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/artistRex.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Rex Orange Country',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(right: 10),
                  constraints: const BoxConstraints(
                      minHeight: 86,
                      minWidth: 80,
                      maxHeight: 114,
                      maxWidth: 114),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/artistRex.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Rex Orange Country',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
