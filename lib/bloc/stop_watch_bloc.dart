import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/state/stop_watch_state.dart';

abstract class MasterEvent {}

class StartEvent extends MasterEvent {
  StartEvent();
}

class StopEvent extends MasterEvent {
  StopEvent();
}

class ResetEvent extends MasterEvent {
  ResetEvent();
}

class TickEvent extends MasterEvent {
  TickEvent();
}

class StopWatchBloc<Event, State> extends Bloc<MasterEvent, StopWatchState> {
  StopWatchBloc() : super(StopWatchState(
    secondCounter: 0,
    centiSecondCounter: 0,
    isPaused: true,
  ));

  Timer _timer;

  @override
  Stream<StopWatchState> mapEventToState(MasterEvent event) async* {
    if (event is StartEvent) {
      if (_timer != null) {
        _timer.cancel();
      }
      _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        add(TickEvent());
      });
      yield state.copyWith(isPaused: false);
    } else if (event is StopEvent) {
      if (_timer.isActive) {
        _timer.cancel();
      }
      yield state.copyWith(
        isPaused: true,
      );
    } else if (event is ResetEvent) {
      yield state.copyWith(centiSecondCounter: 0, secondCounter: 0,);
    } else if (event is TickEvent) {
      int nextCenti = state.centiSecondCounter;
      int nextSec = state.secondCounter;

      if (nextCenti + 1 == 100) {
        yield state.copyWith(
          centiSecondCounter: 0,
          secondCounter: nextSec + 1,
        );
      } else {
        yield state.copyWith(
          centiSecondCounter: nextCenti + 1,
        );
      }
    }
  }
}
