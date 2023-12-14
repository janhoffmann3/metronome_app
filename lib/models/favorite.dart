import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:metronome_app/models/sound.dart';
import 'package:metronome_app/models/user.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  @JsonSerializable(includeIfNull: false)
  factory Favorite({
    required int? id,
    required User user,
    required String name,
    required String signature,
    required Sound sound,
    required int tempo,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}
