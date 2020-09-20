import 'package:dio/dio.dart';
import 'package:movie_app/models/movie_detail_response.dart';
import 'package:movie_app/models/movie_response.dart';
import 'package:movie_app/models/tv_response.dart';

class Repository {
  final String apiKey = "9948fd2e03f89290b464bd94b560b078";
  static final mainUrl = "https://api.themoviedb.org/3";
  final Dio _dio = Dio();

  var getDiscoverMoviesUrl = '$mainUrl/discover/movie';
  var getDiscoverTvUrl = '$mainUrl/discover/tv';

  var getGenreMovie = '$mainUrl/genres/movies/list';
  var getGenreTv = '$mainUrl/genre/tv/list';

  var movieUrl = '$mainUrl/movie';
  var getNowPlayingMoviesUrl = '$mainUrl/movie/now_playing';
  var getPopularMoviesUrl = '$mainUrl/movie/popular';
  var getTopRatedMoviesUrl = '$mainUrl/movie/top_rated';
  var getUpComingMoviesUrl = '$mainUrl/movie/upcoming';

  var tvUrl = '$mainUrl/tv';
  var getAirTodayTvUrl = '$mainUrl/tv/airing_today';
  var getPopularTvUrl = '$mainUrl/tv/popular';
  var getTopRatedTvUrl = '$mainUrl/tv/top_rated';

  Future<MovieResponse> getDiscoverMovies() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getDiscoverMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieResponse> getPlayingMovies() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getNowPlayingMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieResponse> getPopularMovies() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getPopularMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieResponse> getTopMovies() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getTopRatedMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieResponse> getUpComingMovies() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
    };
    try {
      Response response =
          await _dio.get(getUpComingMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  Future<MovieDetailResponse> getMovieDetail(int id) async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
    };
    try {
      Response response =
          await _dio.get(movieUrl + "/$id", queryParameters: params);
      return MovieDetailResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return MovieDetailResponse.withError("$error");
    }
  }

  Future<TvResponse> getDiscoverTv() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getDiscoverTvUrl, queryParameters: params);
      return TvResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }

  Future<TvResponse> getAiringToday() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getAirTodayTvUrl, queryParameters: params);
      return TvResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }

  Future<TvResponse> getPopularTv() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getPopularTvUrl, queryParameters: params);
      return TvResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }

  Future<TvResponse> getTopRatedTv() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getTopRatedTvUrl, queryParameters: params);
      return TvResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }
}
