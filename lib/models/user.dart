import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:metronome_app/models/favorite.dart';
import 'package:metronome_app/models/settings.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(includeIfNull: false)
  const factory User({
    required int? id,
    required String? name,
    required String? email,
    required List<Favorite>? favorites,
    required Settings? settings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
