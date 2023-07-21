import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      child: SizedBox(
        height: 200,
        width: 350,
        child: ListView.separated(
          padding: EdgeInsets.only(bottom: 30),
            itemCount: 4,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                            minHeight: 40,
                            minWidth: 40,
                            maxHeight: 48,
                            maxWidth: 48),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage('assets/img/photo.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Let’s talk about anxiety",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primaryWhiteColor),
                            ),
                            Text(
                              "Psychologycallyou",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: primaryWhiteColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: secondaryWhiteColor),
                  ),
                  Text(
                    '2 hours ago | 19 Min',
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                        color: primaryWhiteColor),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                          style: TextButton.styleFrom(
                              alignment: const Alignment(-2.4, 0)),
                          onPressed: () {},
                          child: Icon(
                            Icons.add_box_rounded,
                            size: 20,
                            color: primaryWhiteColor,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              alignment: const Alignment(-4, 0)),
                          onPressed: () {},
                          child: Icon(
                            Icons.cloud_download_rounded,
                            size: 20,
                            color: primaryWhiteColor,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              alignment: const Alignment(-6, 0)),
                          onPressed: () {},
                          child: Icon(
                            Icons.ios_share_rounded,
                            size: 20,
                            color: primaryWhiteColor,
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              alignment: const Alignment(-8, 0)),
                          onPressed: () {},
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 20,
                            color: primaryWhiteColor,
                          )),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.play_circle,
                            size: 30,
                            color: primaryWhiteColor,
                          )),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
