// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoundImpl _$$SoundImplFromJson(Map<String, dynamic> json) => _$SoundImpl(
      id: json['id'] as int?,
      favorites: (json['favorites'] as List<dynamic>)
          .map((e) => Favorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      version: json['version'] as String,
      dominantBeatSoundPath: json['dominantBeatSoundPath'] as String,
      subBeatSoundPath: json['subBeatSoundPath'] as String,
    );

Map<String, dynamic> _$$SoundImplToJson(_$SoundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['favorites'] = instance.favorites;
  val['name'] = instance.name;
  val['version'] = instance.version;
  val['dominantBeatSoundPath'] = instance.dominantBeatSoundPath;
  val['subBeatSoundPath'] = instance.subBeatSoundPath;
  return val;
}
