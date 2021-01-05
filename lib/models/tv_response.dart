import 'package:movie_app/models/tv.dart';

class TvResponse {
  final List<Tv> tvShows;
  final String error;

  TvResponse(this.tvShows, this.error);

  TvResponse.fromJson(Map<String, dynamic> json)
      : tvShows =
            (json["results"] as List).map((i) => new Tv.fromJson(i)).toList(),
        error = "";

  TvResponse.withError(String errorValue)
      : tvShows = List(),
        error = errorValue;
}
