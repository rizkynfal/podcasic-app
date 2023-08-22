import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:podcasic_app/API/top_artist_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  late Future<TopArtistAPI> api;
  var baseAPIUrl = dotenv.env['API_URL'].toString();

  Future<TopArtistAPI> fetchAPI() async {
    try {
      final res = await http.get(Uri.parse(
          "$baseAPIUrl?method=artist.getinfo&artist=Cher&api_key=55d17c6b3b0f7b8a1985052b37bca7cc&format=json"));
      return TopArtistAPI.fromJson(jsonDecode(res.body));
    } catch (err) {
      return throw Exception(err);
    } finally {
      await http.get(Uri.parse(
          "$baseAPIUrl?method=artist.getinfo&artist=Cher&api_key=55d17c6b3b0f7b8a1985052b37bca7cc&format=json"));
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      api = fetchAPI();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        FutureBuilder<TopArtistAPI>(
          future: api,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                height: 700,
                child: ListView(
                  children: [
                    Text(snapshot.data!.artist.toString()),
                    Text(snapshot.data!.summary.toString())
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
      ]),
    );
  }
}
