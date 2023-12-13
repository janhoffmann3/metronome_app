import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/metronome.dart';
import 'dart:async';

import '../models/signature.dart';

part 'metronome_controller.g.dart';

@riverpod
class MetronomeController extends _$MetronomeController {
  Timer? timer;
  int beatCounter = 0;

  @override
  Metronome build() => Metronome(100, Signature(4, 4), false, "Piano");

  void toggle() {
    if (state.isActive == false) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral),
          state.isActive = true,
          state.sound);
      resync();
    } else if (state.isActive == true) {
      timer?.cancel();
      timer = null;
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral),
          state.isActive = false,
          state.sound);
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
      //assetsAudioPlayerM.play();
    } else {
      //assetsAudioPlayerS.play();

      print("Tick");
    }
    beatCounter++;
  }

  void changeTempo(value) {
    state = Metronome(
        state.tempo = value,
        Signature(state.signature.firstNumeral, state.signature.secondNumeral),
        state.isActive,
        state.sound);
  }

  void increaseTempo() {
    if (state.tempo < 250) {
      state = Metronome(
          state.tempo + 1,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral),
          state.isActive,
          state.sound);
    }
  }

  void decreaseTempo() {
    if (state.tempo > 31) {
      state = Metronome(
          state.tempo - 1,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral),
          state.isActive,
          state.sound);
    }
  }

  void increaseFirstNumeral() {
    if (state.signature.firstNumeral < 16) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral + 1, state.signature.secondNumeral),
          state.isActive,
          state.sound);
    }
  }

  void decreaseFirstNumeral() {
    if (state.signature.firstNumeral > 1) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral - 1, state.signature.secondNumeral),
          state.isActive,
          state.sound);
    }
  }

  void increaseSecondNumeral() {
    if (state.signature.secondNumeral < 4) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral + 1),
          state.isActive,
          state.sound);
    } else if (state.signature.secondNumeral == 4) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral = 8),
          state.isActive,
          state.sound);
    }
  }

  void decreaseSecondNumeral() {
    if (state.signature.secondNumeral > 1 &&
        state.signature.secondNumeral != 8) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral - 1),
          state.isActive,
          state.sound);
    } else if (state.signature.secondNumeral == 8) {
      state = Metronome(
          state.tempo,
          Signature(
              state.signature.firstNumeral, state.signature.secondNumeral = 4),
          state.isActive,
          state.sound);
    }
  }

  void selectSound(String sound) {
    state = Metronome(
        state.tempo,
        Signature(state.signature.firstNumeral, state.signature.secondNumeral),
        state.isActive,
        state.sound = sound);
  }
}
