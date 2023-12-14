// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Signature {
  int get firstNumeral => throw _privateConstructorUsedError;
  int get secondNumeral => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignatureCopyWith<Signature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureCopyWith<$Res> {
  factory $SignatureCopyWith(Signature value, $Res Function(Signature) then) =
      _$SignatureCopyWithImpl<$Res, Signature>;
  @useResult
  $Res call({int firstNumeral, int secondNumeral});
}

/// @nodoc
class _$SignatureCopyWithImpl<$Res, $Val extends Signature>
    implements $SignatureCopyWith<$Res> {
  _$SignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNumeral = null,
    Object? secondNumeral = null,
  }) {
    return _then(_value.copyWith(
      firstNumeral: null == firstNumeral
          ? _value.firstNumeral
          : firstNumeral // ignore: cast_nullable_to_non_nullable
              as int,
      secondNumeral: null == secondNumeral
          ? _value.secondNumeral
          : secondNumeral // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignatureImplCopyWith<$Res>
    implements $SignatureCopyWith<$Res> {
  factory _$$SignatureImplCopyWith(
          _$SignatureImpl value, $Res Function(_$SignatureImpl) then) =
      __$$SignatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int firstNumeral, int secondNumeral});
}

/// @nodoc
class __$$SignatureImplCopyWithImpl<$Res>
    extends _$SignatureCopyWithImpl<$Res, _$SignatureImpl>
    implements _$$SignatureImplCopyWith<$Res> {
  __$$SignatureImplCopyWithImpl(
      _$SignatureImpl _value, $Res Function(_$SignatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNumeral = null,
    Object? secondNumeral = null,
  }) {
    return _then(_$SignatureImpl(
      firstNumeral: null == firstNumeral
          ? _value.firstNumeral
          : firstNumeral // ignore: cast_nullable_to_non_nullable
              as int,
      secondNumeral: null == secondNumeral
          ? _value.secondNumeral
          : secondNumeral // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SignatureImpl implements _Signature {
  const _$SignatureImpl(
      {required this.firstNumeral, required this.secondNumeral});

  @override
  final int firstNumeral;
  @override
  final int secondNumeral;

  @override
  String toString() {
    return 'Signature(firstNumeral: $firstNumeral, secondNumeral: $secondNumeral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureImpl &&
            (identical(other.firstNumeral, firstNumeral) ||
                other.firstNumeral == firstNumeral) &&
            (identical(other.secondNumeral, secondNumeral) ||
                other.secondNumeral == secondNumeral));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstNumeral, secondNumeral);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      __$$SignatureImplCopyWithImpl<_$SignatureImpl>(this, _$identity);
}

abstract class _Signature implements Signature {
  const factory _Signature(
      {required final int firstNumeral,
      required final int secondNumeral}) = _$SignatureImpl;

  @override
  int get firstNumeral;
  @override
  int get secondNumeral;
  @override
  @JsonKey(ignore: true)
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
