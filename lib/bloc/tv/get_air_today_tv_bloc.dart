import 'package:movie_app/models/tv_response.dart';
import 'package:movie_app/repository/tv_repository.dart';
import 'package:rxdart/rxdart.dart';

class AirTodayTvListBloc {
  final TvRepository _repository = TvRepository();
  final BehaviorSubject<TvResponse> _subject = BehaviorSubject<TvResponse>();

  getAirTodayTv() async {
    TvResponse response = await _repository.getAiringToday();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<TvResponse> get subject => _subject;
}

final airTodayTv = AirTodayTvListBloc();
