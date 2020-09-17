class Movie {
  final int id;
  final double popularity, rating;
  final String title, backPoster, poster, overview;

  Movie(
    this.id,
    this.popularity,
    this.title,
    this.backPoster,
    this.poster,
    this.overview,
    this.rating,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popularity = json["popularity"],
        title = json["title"],
        backPoster = json["backdrop_path"],
        poster = json["poster_path"],
        overview = json["overview"],
        rating = json["vote_average"].toDouble();
}
