class TopArtistAPI {
  Artists? artists;
  String? message;
  TopArtistAPI({this.artists, this.message});

  TopArtistAPI.fromJson(Map<String, dynamic> json) {
    artists =
        json['artists'] != null ? Artists.fromJson(json['artists']) : null;
    message = "sukses";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (artists != null) {
      data['artists'] = artists!.toJson();
    }
    return data;
  }
}

class Artists {
  List<Artist>? artist;
  Attr? attr;

  Artists({this.artist, this.attr});

  Artists.fromJson(Map<String, dynamic> json) {
    if (json['artist'] != null) {
      artist = <Artist>[];
      json['artist'].forEach((v) {
        artist!.add(Artist.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (artist != null) {
      data['artist'] = artist!.map((v) => v.toJson()).toList();
    }
    if (attr != null) {
      data['@attr'] = attr!.toJson();
    }
    return data;
  }
}

class Artist {
  String? name;
  String? playcount;
  String? listeners;
  String? mbid;
  String? url;
  String? streamable;
  List<ImageArtist>? image;

  Artist(
      {this.name,
      this.playcount,
      this.listeners,
      this.mbid,
      this.url,
      this.streamable,
      this.image});

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    playcount = json['playcount'];
    listeners = json['listeners'];
    mbid = json['mbid'];
    url = json['url'];
    streamable = json['streamable'];
    if (json['image'] != null) {
      image = <ImageArtist>[];
      json['image'].forEach((v) {
        image!.add(ImageArtist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['playcount'] = playcount;
    data['listeners'] = listeners;
    data['mbid'] = mbid;
    data['url'] = url;
    data['streamable'] = streamable;
    if (image != null) {
      data['image'] = image!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImageArtist {
  String? text;
  String? size;

  ImageArtist({this.text, this.size});

  ImageArtist.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['#text'] = text;
    data['size'] = size;
    return data;
  }
}

class Attr {
  String? page;
  String? perPage;
  String? totalPages;
  String? total;

  Attr({this.page, this.perPage, this.totalPages, this.total});

  Attr.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['perPage'];
    totalPages = json['totalPages'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['perPage'] = perPage;
    data['totalPages'] = totalPages;
    data['total'] = total;
    return data;
  }
}
