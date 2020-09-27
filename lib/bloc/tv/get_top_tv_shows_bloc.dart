import 'package:movie_app/models/tv_response.dart';
import 'package:movie_app/repository/tv_repository.dart';
import 'package:rxdart/rxdart.dart';

class TopTvShowsListBloc {
  final TvRepository _repository = TvRepository();
  final BehaviorSubject<TvResponse> _subject = BehaviorSubject<TvResponse>();

  getTopTvShows() async {
    TvResponse response = await _repository.getTopRatedTv();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<TvResponse> get subject => _subject;
}

final topTvShowsBloc = TopTvShowsListBloc();
