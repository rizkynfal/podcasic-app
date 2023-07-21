import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';
import 'package:podcasic_app/screen/search_screen/activity_screen.dart';
import 'package:podcasic_app/screen/search_screen/carousel_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Podcasts',
            style: TextStyle(color: primaryWhiteColor),
          ),
          centerTitle: true,
          leading: BackButton(
            color: primaryWhiteColor,
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: primaryWhiteColor,
                ))
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'All',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Scifi',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Games',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Conspiracy',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sport',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const CarouselScreen(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Recomendation',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'More',
                          style: TextStyle(
                              color: secondaryWhiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                          color: primaryWhiteColor,
                        )
                      ],
                    ))
              ],
            ),
            const ActivityScreen()
          ],
        ),
      ),
    );
  }
}
