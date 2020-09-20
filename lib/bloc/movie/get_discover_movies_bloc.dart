import 'package:movie_app/models/movie_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class DiscoverMoviesBloc {
  final Repository _repository = Repository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();

  getDiscoverMovies() async {
    MovieResponse response = await _repository.getDiscoverMovies();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final discoverMoviesBloc = DiscoverMoviesBloc();
