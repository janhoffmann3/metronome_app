import 'package:freezed_annotation/freezed_annotation.dart';

part 'signature.freezed.dart';

@freezed
class Signature with _$Signature {
  const factory Signature({
    required int firstNumeral,
    required int secondNumeral,
  }) = _Signature;
}
