import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  @JsonSerializable(includeIfNull: false)
  factory Favorite({
    required int? id,
    required String name,
    required String signature,
    required String sound,
    required int tempo,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}
