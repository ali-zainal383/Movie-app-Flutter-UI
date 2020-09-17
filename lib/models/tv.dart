class Tv {
  final int id;
  final double popularity, rating;
  final String title, backPoster, poster, overview;

  Tv(
    this.id,
    this.popularity,
    this.rating,
    this.title,
    this.backPoster,
    this.poster,
    this.overview,
  );

  Tv.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popularity = json["popularity"].toDouble(),
        title = json["name"],
        backPoster = json["backdrop_path"],
        poster = json["poster_path"],
        overview = json["overview"],
        rating = json["vote_average"].toDouble();
}
