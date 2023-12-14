// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteImpl _$$FavoriteImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImpl(
      id: json['id'] as int?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      name: json['name'] as String,
      signature: json['signature'] as String,
      sound: Sound.fromJson(json['sound'] as Map<String, dynamic>),
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
  val['user'] = instance.user;
  val['name'] = instance.name;
  val['signature'] = instance.signature;
  val['sound'] = instance.sound;
  val['tempo'] = instance.tempo;
  return val;
}
