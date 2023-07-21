import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

class DailyMusicScreen extends StatefulWidget {
  const DailyMusicScreen({super.key});

  @override
  State<DailyMusicScreen> createState() => _DailyMusicScreenState();
}

class _DailyMusicScreenState extends State<DailyMusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        bottom: 10,
      ),
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
        Container(
              height: 86,
              width: 194,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              constraints: const BoxConstraints(maxHeight: 86, maxWidth: 194),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/dailyMusic.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Daily Music',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Selected Music to get you through your day',
                      style: TextStyle(color: primaryWhiteColor, fontSize: 12),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 194,
              height: 96,
              padding: const EdgeInsets.all(15),
              constraints: const BoxConstraints(maxHeight: 86, maxWidth: 194),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/dailyMusic.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Daily Music',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Selected Music to get you through your day',
                      style: TextStyle(color: primaryWhiteColor, fontSize: 12),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 194,
              height: 96,
              padding: const EdgeInsets.all(15),
              constraints: const BoxConstraints(maxHeight: 86, maxWidth: 194),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/dailyMusic.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Daily Music',
                      style: TextStyle(
                          color: primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Selected Music to get you through your day',
                      style: TextStyle(color: primaryWhiteColor, fontSize: 12),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}