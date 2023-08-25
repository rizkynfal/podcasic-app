import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

import '../../API/top_artist_api.dart';
import 'package:http/http.dart' as http;

class TopArtistScreen extends StatefulWidget {
  const TopArtistScreen({super.key});

  @override
  State<TopArtistScreen> createState() => _TopArtistScreenState();
}

class _TopArtistScreenState extends State<TopArtistScreen> {
  Future<TopArtistAPI>? topArtistAPI;
  Future<TopArtistAPI> fetchAPI() async {
    try {
      final res = await http.get(Uri.parse(
          "https://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=55d17c6b3b0f7b8a1985052b37bca7cc&format=json"));
      return TopArtistAPI.fromJson(jsonDecode(res.body));
    } catch (err) {
      return throw Exception(err);
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      topArtistAPI = fetchAPI();
    });
  }

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
        child: FutureBuilder<TopArtistAPI>(
          future: topArtistAPI,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              Artists artisData = snapshot.data!.artists;
              List<Artist>? artists = artisData.artist?.toList();

              return ListView.builder(
                itemCount: artists?.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  List<ImageArtist>? imageArtist = artists?[index].image!;
                  return Column(
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
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        '${artists?[index].name}',
                        style: TextStyle(
                            color: primaryWhiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  ),
                ],
              );
            } else {
              return const Center(
                heightFactor: 5,
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
