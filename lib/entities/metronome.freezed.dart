// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metronome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Metronome {
  int get tempo => throw _privateConstructorUsedError;
  Signature get signature => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get sound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetronomeCopyWith<Metronome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetronomeCopyWith<$Res> {
  factory $MetronomeCopyWith(Metronome value, $Res Function(Metronome) then) =
      _$MetronomeCopyWithImpl<$Res, Metronome>;
  @useResult
  $Res call({int tempo, Signature signature, bool isActive, String sound});

  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class _$MetronomeCopyWithImpl<$Res, $Val extends Metronome>
    implements $MetronomeCopyWith<$Res> {
  _$MetronomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempo = null,
    Object? signature = null,
    Object? isActive = null,
    Object? sound = null,
  }) {
    return _then(_value.copyWith(
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res> get signature {
    return $SignatureCopyWith<$Res>(_value.signature, (value) {
      return _then(_value.copyWith(signature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetronomeImplCopyWith<$Res>
    implements $MetronomeCopyWith<$Res> {
  factory _$$MetronomeImplCopyWith(
          _$MetronomeImpl value, $Res Function(_$MetronomeImpl) then) =
      __$$MetronomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tempo, Signature signature, bool isActive, String sound});

  @override
  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class __$$MetronomeImplCopyWithImpl<$Res>
    extends _$MetronomeCopyWithImpl<$Res, _$MetronomeImpl>
    implements _$$MetronomeImplCopyWith<$Res> {
  __$$MetronomeImplCopyWithImpl(
      _$MetronomeImpl _value, $Res Function(_$MetronomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempo = null,
    Object? signature = null,
    Object? isActive = null,
    Object? sound = null,
  }) {
    return _then(_$MetronomeImpl(
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MetronomeImpl implements _Metronome {
  const _$MetronomeImpl(
      {required this.tempo,
      required this.signature,
      required this.isActive,
      required this.sound});

  @override
  final int tempo;
  @override
  final Signature signature;
  @override
  final bool isActive;
  @override
  final String sound;

  @override
  String toString() {
    return 'Metronome(tempo: $tempo, signature: $signature, isActive: $isActive, sound: $sound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetronomeImpl &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.sound, sound) || other.sound == sound));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tempo, signature, isActive, sound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetronomeImplCopyWith<_$MetronomeImpl> get copyWith =>
      __$$MetronomeImplCopyWithImpl<_$MetronomeImpl>(this, _$identity);
}

abstract class _Metronome implements Metronome {
  const factory _Metronome(
      {required final int tempo,
      required final Signature signature,
      required final bool isActive,
      required final String sound}) = _$MetronomeImpl;

  @override
  int get tempo;
  @override
  Signature get signature;
  @override
  bool get isActive;
  @override
  String get sound;
  @override
  @JsonKey(ignore: true)
  _$$MetronomeImplCopyWith<_$MetronomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
