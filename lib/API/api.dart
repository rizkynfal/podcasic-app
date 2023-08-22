library api;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lastfm/lastfm.dart';

Future<LastFM> authAPI() async {
  LastFM auth = LastFMUnauthorized(dotenv.env['MUSIC_API_KEY'].toString(),
      dotenv.env['MUSIC_SHARED_SECRET'].toString());
  return auth;
}

LastFM auth = LastFMUnauthorized(dotenv.env['MUSIC_API_KEY'].toString(),
    dotenv.env['MUSIC_SHARED_SECRET'].toString());
var baseAPIUrl = dotenv.env['API_URL'].toString();
var apiKey = dotenv.env['MUSIC_API_KEY'].toString();
