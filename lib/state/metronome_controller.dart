import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/metronome.dart';
import 'dart:async';
import 'package:soundpool/soundpool.dart';

import '../entities/signature.dart';

part 'metronome_controller.g.dart';

@riverpod
class MetronomeController extends _$MetronomeController {
  int _beatCounter = 0;
  int? _mainSound;
  int? _subSound;
  DateTime? _lastTap;
  StreamSubscription? _tickerSubscription;

  final Soundpool _pool = Soundpool.fromOptions(
      options: const SoundpoolOptions(streamType: StreamType.notification));

  MetronomeController() {
    loadSounds("assets/audio/click_up.wav", "assets/audio/click_down.wav");
  }

  @override
  Metronome build() => const Metronome(
      tempo: 100,
      signature: Signature(firstNumeral: 4, secondNumeral: 4),
      isActive: false,
      sound: "Click",
      beatCounter: 0);

  Future<void> loadSounds(String mainSoundPath, String subSoundPath) async {
    _mainSound = await loadSound(mainSoundPath);
    _subSound = await loadSound(subSoundPath);
  }

  Future<int> loadSound(String path) async {
    return await rootBundle.load(path).then((ByteData soundData) {
      return _pool.load(soundData);
    });
  }

  void setMetronome(int tempo, String signature, String sound) {
    String signature = "4/4";
    List<String> parts = signature.split('/');
    int firstNumeral = int.parse(parts[0]);
    int secondNumeral = int.parse(parts[1]);

    Signature sig =
        Signature(firstNumeral: firstNumeral, secondNumeral: secondNumeral);
    state = state.copyWith(tempo: tempo, signature: sig, sound: sound);
    resync();
  }

  void toggle() {
    if (state.isActive == false) {
      state = state.copyWith(isActive: true);
      resync();
    } else if (state.isActive == true) {
      _tickerSubscription?.cancel();
      state = state.copyWith(isActive: false);
    }
  }

  void tick() {
    if (_beatCounter % state.signature.firstNumeral == 0 || _beatCounter == 0) {
      _pool.play(_mainSound!);
    } else {
      _pool.play(_subSound!);
    }
    state = state.copyWith(beatCounter: _beatCounter);
    _beatCounter++;
  }

  void resync() {
    if (state.isActive == true) {
      _tickerSubscription?.cancel();
      _beatCounter = 0;
      _tickerSubscription = Stream.periodic(
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
    if (_lastTap != null) {
      final difference = now.difference(_lastTap!).inMilliseconds;
      final bpm = 60000 / difference;
      if (bpm > 250) {
        state = state.copyWith(tempo: 250);
      } else if (bpm < 30) {
        state = state.copyWith(tempo: 30);
      } else {
        state = state.copyWith(tempo: bpm.round());
      }
    }
    _lastTap = now;
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
    switch (sound) {
      case "Click":
        state = state.copyWith(sound: "Click");
        loadSounds("assets/audio/click_up.wav", "assets/audio/click_down.wav");
        break;
      case "Piano":
        state = state.copyWith(sound: "Piano");
        loadSounds("assets/audio/piano_up.wav", "assets/audio/piano_down.wav");
      case "Marimba":
        state = state.copyWith(sound: "Marimba");
        loadSounds(
            "assets/audio/marimba_up.wav", "assets/audio/marimba_down.wav");
      case "Synth":
        state = state.copyWith(sound: "Synth");
        loadSounds("assets/audio/synth_up.wav", "assets/audio/synth_down.wav");
      default:
        state = state.copyWith(sound: "Click");
        loadSounds("assets/audio/click_up.wav", "assets/audio/click_down.wav");
    }
  }
}
