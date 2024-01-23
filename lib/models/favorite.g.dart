// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteImpl _$$FavoriteImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      signature: json['signature'] as String,
      sound: json['sound'] as String,
      tempo: json['tempo'] as int,
    );

Map<String, dynamic> _$$FavoriteImplToJson(_$FavoriteImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['signature'] = instance.signature;
  val['sound'] = instance.sound;
  val['tempo'] = instance.tempo;
  return val;
}
