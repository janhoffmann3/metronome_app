import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/metronome.dart';
import 'dart:async';
import 'package:soundpool/soundpool.dart';

import '../entities/signature.dart';

part 'metronome_controller.g.dart';

@riverpod
class MetronomeController extends _$MetronomeController {
  int beatCounter = 0;
  int? mainSound;
  int? subSound;
  DateTime? lastTap;
  StreamSubscription? tickerSubscription;
  Soundpool pool = Soundpool.fromOptions(
      options: const SoundpoolOptions(streamType: StreamType.notification));

  MetronomeController() {
    loadSounds();
  }

  Future<void> loadSounds() async {
    mainSound = await loadSound("assets/audio/pno_m.mp3");
    subSound = await loadSound("assets/audio/pno_s.mp3");
  }

  Future<int> loadSound(String path) async {
    return await rootBundle.load(path).then((ByteData soundData) {
      return pool.load(soundData);
    });
  }

  @override
  Metronome build() => const Metronome(
      tempo: 100,
      signature: Signature(firstNumeral: 4, secondNumeral: 4),
      isActive: false,
      sound: "Piano",
      beatCounter: 0);

  void toggle() {
    if (state.isActive == false) {
      state = state.copyWith(isActive: true);
      resync();
    } else if (state.isActive == true) {
      tickerSubscription?.cancel();
      state = state.copyWith(isActive: false);
    }
  }

  void tick() {
    if (beatCounter % state.signature.firstNumeral == 0 || beatCounter == 0) {
      pool.play(mainSound!);
    } else {
      pool.play(subSound!);
    }
    state = state.copyWith(beatCounter: beatCounter);
    beatCounter++;
  }

  void resync() {
    if (state.isActive == true) {
      tickerSubscription?.cancel();
      beatCounter = 0;
      tickerSubscription = Stream.periodic(
        Duration(
          milliseconds:
              ((60000 ~/ state.tempo * (4 / state.signature.secondNumeral)))
                  .round(),
        ),
      ).listen((_) => tick());
    }
  }

  void changeTempo(value) {
    state = state.copyWith(tempo: value);
  }

  void updateTempo(int delta) {
    int newTempo = state.tempo + delta;
    if (newTempo >= 31 && newTempo <= 250) {
      state = state.copyWith(tempo: newTempo);
    }
  }

  void increaseTempo() {
    updateTempo(1);
  }

  void decreaseTempo() {
    updateTempo(-1);
  }

  void onTapTempo() {
    final now = DateTime.now();
    if (lastTap != null) {
      final difference = now.difference(lastTap!).inMilliseconds;
      final bpm = 60000 / difference;
      state = state.copyWith(tempo: bpm.round());
    }
    lastTap = now;
  }

  void updateFirstNumeral(int delta) {
    int newFirstNumeral = state.signature.firstNumeral + delta;
    if (newFirstNumeral >= 1 && newFirstNumeral <= 12) {
      state = state.copyWith(
          signature: Signature(
              firstNumeral: newFirstNumeral,
              secondNumeral: state.signature.secondNumeral));
    }
  }

  void increaseFirstNumeral() {
    updateFirstNumeral(1);
  }

  void decreaseFirstNumeral() {
    updateFirstNumeral(-1);
  }

  void updateSecondNumeral(int delta) {
    List<int> validNumerals = [1, 2, 4, 8, 16];
    int currentIndex = validNumerals.indexOf(state.signature.secondNumeral);
    int newIndex = currentIndex + delta;

    if (newIndex >= 0 && newIndex < validNumerals.length) {
      int newSecondNumeral = validNumerals[newIndex];
      state = state.copyWith(
          signature: Signature(
              firstNumeral: state.signature.firstNumeral,
              secondNumeral: newSecondNumeral));
    }
  }

  void decreaseSecondNumeral() {
    updateSecondNumeral(-1);
  }

  void increaseSecondNumeral() {
    updateSecondNumeral(1);
  }

  void selectSound(String sound) {
    state = state.copyWith(sound: sound);
  }
}
