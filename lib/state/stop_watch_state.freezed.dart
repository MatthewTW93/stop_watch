// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stop_watch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StopWatchStateTearOff {
  const _$StopWatchStateTearOff();

// ignore: unused_element
  _StopWatchState call(
      {int secondCounter, int centiSecondCounter, bool isPaused}) {
    return _StopWatchState(
      secondCounter: secondCounter,
      centiSecondCounter: centiSecondCounter,
      isPaused: isPaused,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StopWatchState = _$StopWatchStateTearOff();

/// @nodoc
mixin _$StopWatchState {
  int get secondCounter;
  int get centiSecondCounter;
  bool get isPaused;

  $StopWatchStateCopyWith<StopWatchState> get copyWith;
}

/// @nodoc
abstract class $StopWatchStateCopyWith<$Res> {
  factory $StopWatchStateCopyWith(
          StopWatchState value, $Res Function(StopWatchState) then) =
      _$StopWatchStateCopyWithImpl<$Res>;
  $Res call({int secondCounter, int centiSecondCounter, bool isPaused});
}

/// @nodoc
class _$StopWatchStateCopyWithImpl<$Res>
    implements $StopWatchStateCopyWith<$Res> {
  _$StopWatchStateCopyWithImpl(this._value, this._then);

  final StopWatchState _value;
  // ignore: unused_field
  final $Res Function(StopWatchState) _then;

  @override
  $Res call({
    Object secondCounter = freezed,
    Object centiSecondCounter = freezed,
    Object isPaused = freezed,
  }) {
    return _then(_value.copyWith(
      secondCounter: secondCounter == freezed
          ? _value.secondCounter
          : secondCounter as int,
      centiSecondCounter: centiSecondCounter == freezed
          ? _value.centiSecondCounter
          : centiSecondCounter as int,
      isPaused: isPaused == freezed ? _value.isPaused : isPaused as bool,
    ));
  }
}

/// @nodoc
abstract class _$StopWatchStateCopyWith<$Res>
    implements $StopWatchStateCopyWith<$Res> {
  factory _$StopWatchStateCopyWith(
          _StopWatchState value, $Res Function(_StopWatchState) then) =
      __$StopWatchStateCopyWithImpl<$Res>;
  @override
  $Res call({int secondCounter, int centiSecondCounter, bool isPaused});
}

/// @nodoc
class __$StopWatchStateCopyWithImpl<$Res>
    extends _$StopWatchStateCopyWithImpl<$Res>
    implements _$StopWatchStateCopyWith<$Res> {
  __$StopWatchStateCopyWithImpl(
      _StopWatchState _value, $Res Function(_StopWatchState) _then)
      : super(_value, (v) => _then(v as _StopWatchState));

  @override
  _StopWatchState get _value => super._value as _StopWatchState;

  @override
  $Res call({
    Object secondCounter = freezed,
    Object centiSecondCounter = freezed,
    Object isPaused = freezed,
  }) {
    return _then(_StopWatchState(
      secondCounter: secondCounter == freezed
          ? _value.secondCounter
          : secondCounter as int,
      centiSecondCounter: centiSecondCounter == freezed
          ? _value.centiSecondCounter
          : centiSecondCounter as int,
      isPaused: isPaused == freezed ? _value.isPaused : isPaused as bool,
    ));
  }
}

/// @nodoc
class _$_StopWatchState implements _StopWatchState {
  const _$_StopWatchState(
      {this.secondCounter, this.centiSecondCounter, this.isPaused});

  @override
  final int secondCounter;
  @override
  final int centiSecondCounter;
  @override
  final bool isPaused;

  @override
  String toString() {
    return 'StopWatchState(secondCounter: $secondCounter, centiSecondCounter: $centiSecondCounter, isPaused: $isPaused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopWatchState &&
            (identical(other.secondCounter, secondCounter) ||
                const DeepCollectionEquality()
                    .equals(other.secondCounter, secondCounter)) &&
            (identical(other.centiSecondCounter, centiSecondCounter) ||
                const DeepCollectionEquality()
                    .equals(other.centiSecondCounter, centiSecondCounter)) &&
            (identical(other.isPaused, isPaused) ||
                const DeepCollectionEquality()
                    .equals(other.isPaused, isPaused)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondCounter) ^
      const DeepCollectionEquality().hash(centiSecondCounter) ^
      const DeepCollectionEquality().hash(isPaused);

  @override
  _$StopWatchStateCopyWith<_StopWatchState> get copyWith =>
      __$StopWatchStateCopyWithImpl<_StopWatchState>(this, _$identity);
}

abstract class _StopWatchState implements StopWatchState {
  const factory _StopWatchState(
      {int secondCounter,
      int centiSecondCounter,
      bool isPaused}) = _$_StopWatchState;

  @override
  int get secondCounter;
  @override
  int get centiSecondCounter;
  @override
  bool get isPaused;
  @override
  _$StopWatchStateCopyWith<_StopWatchState> get copyWith;
}
