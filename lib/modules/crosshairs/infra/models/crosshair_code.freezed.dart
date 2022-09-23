// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crosshair_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CrosshairCode _$CrosshairCodeFromJson(Map<String, dynamic> json) {
  return _CrosshairCode.fromJson(json);
}

/// @nodoc
mixin _$CrosshairCode {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrosshairCodeCopyWith<CrosshairCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrosshairCodeCopyWith<$Res> {
  factory $CrosshairCodeCopyWith(
          CrosshairCode value, $Res Function(CrosshairCode) then) =
      _$CrosshairCodeCopyWithImpl<$Res>;
  $Res call({String name, String code, String tags});
}

/// @nodoc
class _$CrosshairCodeCopyWithImpl<$Res>
    implements $CrosshairCodeCopyWith<$Res> {
  _$CrosshairCodeCopyWithImpl(this._value, this._then);

  final CrosshairCode _value;
  // ignore: unused_field
  final $Res Function(CrosshairCode) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CrosshairCodeCopyWith<$Res>
    implements $CrosshairCodeCopyWith<$Res> {
  factory _$$_CrosshairCodeCopyWith(
          _$_CrosshairCode value, $Res Function(_$_CrosshairCode) then) =
      __$$_CrosshairCodeCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, String tags});
}

/// @nodoc
class __$$_CrosshairCodeCopyWithImpl<$Res>
    extends _$CrosshairCodeCopyWithImpl<$Res>
    implements _$$_CrosshairCodeCopyWith<$Res> {
  __$$_CrosshairCodeCopyWithImpl(
      _$_CrosshairCode _value, $Res Function(_$_CrosshairCode) _then)
      : super(_value, (v) => _then(v as _$_CrosshairCode));

  @override
  _$_CrosshairCode get _value => super._value as _$_CrosshairCode;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_CrosshairCode(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CrosshairCode extends _CrosshairCode {
  const _$_CrosshairCode({this.name = '', required this.code, this.tags = ''})
      : super._();

  factory _$_CrosshairCode.fromJson(Map<String, dynamic> json) =>
      _$$_CrosshairCodeFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final String code;
  @override
  @JsonKey()
  final String tags;

  @override
  String toString() {
    return 'CrosshairCode(name: $name, code: $code, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrosshairCode &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$$_CrosshairCodeCopyWith<_$_CrosshairCode> get copyWith =>
      __$$_CrosshairCodeCopyWithImpl<_$_CrosshairCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrosshairCodeToJson(
      this,
    );
  }
}

abstract class _CrosshairCode extends CrosshairCode {
  const factory _CrosshairCode(
      {final String name,
      required final String code,
      final String tags}) = _$_CrosshairCode;
  const _CrosshairCode._() : super._();

  factory _CrosshairCode.fromJson(Map<String, dynamic> json) =
      _$_CrosshairCode.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$$_CrosshairCodeCopyWith<_$_CrosshairCode> get copyWith =>
      throw _privateConstructorUsedError;
}
