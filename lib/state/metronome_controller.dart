import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/metronome.dart';
import 'dart:async';

import '../entities/signature.dart';

part 'metronome_controller.g.dart';

@riverpod
class MetronomeController extends _$MetronomeController {
  Timer? timer;
  int beatCounter = 0;

  @override
  Metronome build() => const Metronome(
      tempo: 100,
      signature: Signature(firstNumeral: 4, secondNumeral: 4),
      isActive: false,
      sound: "Piano");

  void toggle() {
    if (state.isActive == false) {
      state = state.copyWith(isActive: true);
      resync();
    } else if (state.isActive == true) {
      timer?.cancel();
      timer = null;
      state = state.copyWith(isActive: false);
    }
  }

  void resync() {
    if (state.isActive == true) {
      timer?.cancel();
      timer = null;
      timer = Timer.periodic(
          Duration(
              milliseconds: ((60000 ~/ state.tempo) *
                      (state.signature.firstNumeral /
                          state.signature.secondNumeral))
                  .round()),
          (timer) => tick());
    }
  }

  void tick() {
    if (beatCounter % state.signature.secondNumeral == 0 || beatCounter == 0) {
      print("TICK");
    } else {
      print("Tick");
    }
    beatCounter++;
  }

  void changeTempo(value) {
    state = state.copyWith(tempo: value);
  }

  void increaseTempo() {
    if (state.tempo < 250) {
      state = state.copyWith(tempo: state.tempo + 1);
    }
  }

  void decreaseTempo() {
    if (state.tempo > 31) {
      state = state.copyWith(tempo: state.tempo - 1);
    }
  }

  void increaseFirstNumeral() {
    if (state.signature.firstNumeral < 16) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral + 1,
              secondNumeral: state.signature.secondNumeral));
    }
  }

  void decreaseFirstNumeral() {
    if (state.signature.firstNumeral > 1) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral - 1,
              secondNumeral: state.signature.secondNumeral));
    }
  }

  void increaseSecondNumeral() {
    if (state.signature.secondNumeral < 4) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral,
              secondNumeral: state.signature.secondNumeral + 1));
    } else if (state.signature.secondNumeral == 4) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral, secondNumeral: 8));
      print(state);
    }
  }

  void decreaseSecondNumeral() {
    if (state.signature.secondNumeral > 1 &&
        state.signature.secondNumeral != 8) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral,
              secondNumeral: state.signature.secondNumeral - 1));
    } else if (state.signature.secondNumeral == 8) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral, secondNumeral: 4));
    }
  }

  void selectSound(String sound) {
    state = state.copyWith(sound: sound);
  }
}
