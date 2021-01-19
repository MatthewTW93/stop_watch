import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_watch_state.freezed.dart';

@freezed
abstract class StopWatchState with _$StopWatchState {
  const factory StopWatchState(
      {int secondCounter,
        int centiSecondCounter,
        bool isPaused,
      }) = _StopWatchState;
}