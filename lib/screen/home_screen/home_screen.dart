import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcasic_app/constant/constant.dart';
import 'package:http/http.dart' as http;
import 'package:podcasic_app/screen/home_screen/daily_music_screen.dart';
import 'package:podcasic_app/screen/home_screen/favorite_artist_screen.dart';
import 'package:podcasic_app/screen/home_screen/favorite_genre_screen.dart';
import 'package:podcasic_app/screen/home_screen/top_artist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final urlArtist = ' https://bandsintown.com/artists/';

  @override
  void initState() {
    super.initState();
    setState(() {
      GoogleFonts.pendingFonts([
        GoogleFonts.nunitoSans(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
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
                  style: TextButton.styleFrom(
                      foregroundColor: primaryWhiteColor,
                      fixedSize: const Size(24, 24)),
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
          const SizedBox(
            height: 10,
          ),
          const DailyMusicScreen(),
          headingTitleList('Your favorite music genre'),
          const FavoriteGenreScreen(),
          headingTitleList('Favorite Artists'),
          const FavoriteArtistScreen(),
          headingTitleList('Top Artists'),
          const TopArtistScreen(),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }

  Widget headingTitleList(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, bottom: 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: primaryWhiteColor),
      ),
    );
  }
}
