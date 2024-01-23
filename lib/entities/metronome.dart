import 'signature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metronome.freezed.dart';

@freezed
class Metronome with _$Metronome {
  const factory Metronome({
    required int tempo,
    required Signature signature,
    required bool isActive,
    required String sound,
    required int beatCounter,
    required bool favorited,
    required bool? haptic,
  }) = _Metronome;
}
