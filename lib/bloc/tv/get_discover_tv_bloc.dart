import 'package:movie_app/models/tv_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class DiscoverTvBloc {
  final Repository _repository = Repository();
  final BehaviorSubject<TvResponse> _subject = BehaviorSubject<TvResponse>();

  getDiscoverTv() async {
    TvResponse response = await _repository.getDiscoverTv();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<TvResponse> get subject => _subject;
}

final discoverTvBloc = DiscoverTvBloc();
