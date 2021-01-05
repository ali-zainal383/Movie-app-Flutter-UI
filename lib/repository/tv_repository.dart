import 'package:dio/dio.dart';
import 'package:movie_app/models/tv_response.dart';

class TvRepository {
  final String apiKey = "9948fd2e03f89290b464bd94b560b078";
  static final mainUrl = "https://api.themoviedb.org/3";
  final Dio _dio = Dio();

  var getDiscoverTvUrl = '$mainUrl/discover/tv';
  var getGenreTv = '$mainUrl/genre/tv/list';

  var tvUrl = '$mainUrl/tv';
  var getAirTodayTvUrl = '$mainUrl/tv/airing_today';
  var getPopularTvUrl = '$mainUrl/tv/popular';
  var getTopRatedTvUrl = '$mainUrl/tv/top_rated';
  var getOnAirTvUrl = '$mainUrl/tv/on_the_air';

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

  Future<TvResponse> getOnAirTv() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
    };
    try {
      Response response =
          await _dio.get(getOnAirTvUrl, queryParameters: params);
      return TvResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }
}
