import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  @JsonSerializable(includeIfNull: false)
  factory Session({
    required int? id,
    required DateTime? startTime,
    required DateTime? endTime,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
