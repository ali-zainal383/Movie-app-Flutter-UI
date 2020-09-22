import 'package:movie_app/models/tv_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class OnAirTvListBloc {
  final Repository _repository = Repository();
  final BehaviorSubject<TvResponse> _subject = BehaviorSubject<TvResponse>();

  getOnAirTvShows() async {
    TvResponse response = await _repository.getOnAirTv();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<TvResponse> get subject => _subject;
}

final onAirTvShowBloc = OnAirTvListBloc();
