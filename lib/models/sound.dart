import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:metronome_app/models/favorite.dart';

part 'sound.freezed.dart';
part 'sound.g.dart';

@freezed
class Sound with _$Sound {
  @JsonSerializable(includeIfNull: false)
  const factory Sound({
    required int? id,
    required List<Favorite> favorites,
    required String name,
    required String version,
    required String dominantBeatSoundPath,
    required String subBeatSoundPath,
  }) = _Sound;

  factory Sound.fromJson(Map<String, dynamic> json) => _$SoundFromJson(json);
}
