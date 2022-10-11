// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'responsive_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponsiveState {
  Size get size => throw _privateConstructorUsedError;
  double get mediumBegin => throw _privateConstructorUsedError;
  double get mediumEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponsiveStateCopyWith<ResponsiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsiveStateCopyWith<$Res> {
  factory $ResponsiveStateCopyWith(
          ResponsiveState value, $Res Function(ResponsiveState) then) =
      _$ResponsiveStateCopyWithImpl<$Res>;
  $Res call({Size size, double mediumBegin, double mediumEnd});
}

/// @nodoc
class _$ResponsiveStateCopyWithImpl<$Res>
    implements $ResponsiveStateCopyWith<$Res> {
  _$ResponsiveStateCopyWithImpl(this._value, this._then);

  final ResponsiveState _value;
  // ignore: unused_field
  final $Res Function(ResponsiveState) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? mediumBegin = freezed,
    Object? mediumEnd = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      mediumBegin: mediumBegin == freezed
          ? _value.mediumBegin
          : mediumBegin // ignore: cast_nullable_to_non_nullable
              as double,
      mediumEnd: mediumEnd == freezed
          ? _value.mediumEnd
          : mediumEnd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponsiveStateCopyWith<$Res>
    implements $ResponsiveStateCopyWith<$Res> {
  factory _$$_ResponsiveStateCopyWith(
          _$_ResponsiveState value, $Res Function(_$_ResponsiveState) then) =
      __$$_ResponsiveStateCopyWithImpl<$Res>;
  @override
  $Res call({Size size, double mediumBegin, double mediumEnd});
}

/// @nodoc
class __$$_ResponsiveStateCopyWithImpl<$Res>
    extends _$ResponsiveStateCopyWithImpl<$Res>
    implements _$$_ResponsiveStateCopyWith<$Res> {
  __$$_ResponsiveStateCopyWithImpl(
      _$_ResponsiveState _value, $Res Function(_$_ResponsiveState) _then)
      : super(_value, (v) => _then(v as _$_ResponsiveState));

  @override
  _$_ResponsiveState get _value => super._value as _$_ResponsiveState;

  @override
  $Res call({
    Object? size = freezed,
    Object? mediumBegin = freezed,
    Object? mediumEnd = freezed,
  }) {
    return _then(_$_ResponsiveState(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      mediumBegin: mediumBegin == freezed
          ? _value.mediumBegin
          : mediumBegin // ignore: cast_nullable_to_non_nullable
              as double,
      mediumEnd: mediumEnd == freezed
          ? _value.mediumEnd
          : mediumEnd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ResponsiveState extends _ResponsiveState {
  _$_ResponsiveState(
      {this.size = Size.zero, this.mediumBegin = 600, this.mediumEnd = 840})
      : super._();

  @override
  @JsonKey()
  final Size size;
  @override
  @JsonKey()
  final double mediumBegin;
  @override
  @JsonKey()
  final double mediumEnd;

  @override
  String toString() {
    return 'ResponsiveState(size: $size, mediumBegin: $mediumBegin, mediumEnd: $mediumEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponsiveState &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.mediumBegin, mediumBegin) &&
            const DeepCollectionEquality().equals(other.mediumEnd, mediumEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(mediumBegin),
      const DeepCollectionEquality().hash(mediumEnd));

  @JsonKey(ignore: true)
  @override
  _$$_ResponsiveStateCopyWith<_$_ResponsiveState> get copyWith =>
      __$$_ResponsiveStateCopyWithImpl<_$_ResponsiveState>(this, _$identity);
}

abstract class _ResponsiveState extends ResponsiveState {
  factory _ResponsiveState(
      {final Size size,
      final double mediumBegin,
      final double mediumEnd}) = _$_ResponsiveState;
  _ResponsiveState._() : super._();

  @override
  Size get size;
  @override
  double get mediumBegin;
  @override
  double get mediumEnd;
  @override
  @JsonKey(ignore: true)
  _$$_ResponsiveStateCopyWith<_$_ResponsiveState> get copyWith =>
      throw _privateConstructorUsedError;
}
