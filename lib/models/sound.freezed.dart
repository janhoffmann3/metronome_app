// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sound _$SoundFromJson(Map<String, dynamic> json) {
  return _Sound.fromJson(json);
}

/// @nodoc
mixin _$Sound {
  int? get id => throw _privateConstructorUsedError;
  List<Favorite> get favorites => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get dominantBeatSoundPath => throw _privateConstructorUsedError;
  String get subBeatSoundPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoundCopyWith<Sound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundCopyWith<$Res> {
  factory $SoundCopyWith(Sound value, $Res Function(Sound) then) =
      _$SoundCopyWithImpl<$Res, Sound>;
  @useResult
  $Res call(
      {int? id,
      List<Favorite> favorites,
      String name,
      String version,
      String dominantBeatSoundPath,
      String subBeatSoundPath});
}

/// @nodoc
class _$SoundCopyWithImpl<$Res, $Val extends Sound>
    implements $SoundCopyWith<$Res> {
  _$SoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? favorites = null,
    Object? name = null,
    Object? version = null,
    Object? dominantBeatSoundPath = null,
    Object? subBeatSoundPath = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dominantBeatSoundPath: null == dominantBeatSoundPath
          ? _value.dominantBeatSoundPath
          : dominantBeatSoundPath // ignore: cast_nullable_to_non_nullable
              as String,
      subBeatSoundPath: null == subBeatSoundPath
          ? _value.subBeatSoundPath
          : subBeatSoundPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoundImplCopyWith<$Res> implements $SoundCopyWith<$Res> {
  factory _$$SoundImplCopyWith(
          _$SoundImpl value, $Res Function(_$SoundImpl) then) =
      __$$SoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<Favorite> favorites,
      String name,
      String version,
      String dominantBeatSoundPath,
      String subBeatSoundPath});
}

/// @nodoc
class __$$SoundImplCopyWithImpl<$Res>
    extends _$SoundCopyWithImpl<$Res, _$SoundImpl>
    implements _$$SoundImplCopyWith<$Res> {
  __$$SoundImplCopyWithImpl(
      _$SoundImpl _value, $Res Function(_$SoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? favorites = null,
    Object? name = null,
    Object? version = null,
    Object? dominantBeatSoundPath = null,
    Object? subBeatSoundPath = null,
  }) {
    return _then(_$SoundImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dominantBeatSoundPath: null == dominantBeatSoundPath
          ? _value.dominantBeatSoundPath
          : dominantBeatSoundPath // ignore: cast_nullable_to_non_nullable
              as String,
      subBeatSoundPath: null == subBeatSoundPath
          ? _value.subBeatSoundPath
          : subBeatSoundPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$SoundImpl implements _Sound {
  const _$SoundImpl(
      {required this.id,
      required final List<Favorite> favorites,
      required this.name,
      required this.version,
      required this.dominantBeatSoundPath,
      required this.subBeatSoundPath})
      : _favorites = favorites;

  factory _$SoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoundImplFromJson(json);

  @override
  final int? id;
  final List<Favorite> _favorites;
  @override
  List<Favorite> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final String name;
  @override
  final String version;
  @override
  final String dominantBeatSoundPath;
  @override
  final String subBeatSoundPath;

  @override
  String toString() {
    return 'Sound(id: $id, favorites: $favorites, name: $name, version: $version, dominantBeatSoundPath: $dominantBeatSoundPath, subBeatSoundPath: $subBeatSoundPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.dominantBeatSoundPath, dominantBeatSoundPath) ||
                other.dominantBeatSoundPath == dominantBeatSoundPath) &&
            (identical(other.subBeatSoundPath, subBeatSoundPath) ||
                other.subBeatSoundPath == subBeatSoundPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_favorites),
      name,
      version,
      dominantBeatSoundPath,
      subBeatSoundPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundImplCopyWith<_$SoundImpl> get copyWith =>
      __$$SoundImplCopyWithImpl<_$SoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoundImplToJson(
      this,
    );
  }
}

abstract class _Sound implements Sound {
  const factory _Sound(
      {required final int? id,
      required final List<Favorite> favorites,
      required final String name,
      required final String version,
      required final String dominantBeatSoundPath,
      required final String subBeatSoundPath}) = _$SoundImpl;

  factory _Sound.fromJson(Map<String, dynamic> json) = _$SoundImpl.fromJson;

  @override
  int? get id;
  @override
  List<Favorite> get favorites;
  @override
  String get name;
  @override
  String get version;
  @override
  String get dominantBeatSoundPath;
  @override
  String get subBeatSoundPath;
  @override
  @JsonKey(ignore: true)
  _$$SoundImplCopyWith<_$SoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
