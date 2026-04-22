// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) {
  return _SubCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SubCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
          SubCategoryModel value, $Res Function(SubCategoryModel) then) =
      _$SubCategoryModelCopyWithImpl<$Res, SubCategoryModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      String? type,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res, $Val extends SubCategoryModel>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? type = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryModelImplCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$$SubCategoryModelImplCopyWith(_$SubCategoryModelImpl value,
          $Res Function(_$SubCategoryModelImpl) then) =
      __$$SubCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      String? type,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$SubCategoryModelImplCopyWithImpl<$Res>
    extends _$SubCategoryModelCopyWithImpl<$Res, _$SubCategoryModelImpl>
    implements _$$SubCategoryModelImplCopyWith<$Res> {
  __$$SubCategoryModelImplCopyWithImpl(_$SubCategoryModelImpl _value,
      $Res Function(_$SubCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? type = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$SubCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryModelImpl implements _SubCategoryModel {
  const _$SubCategoryModelImpl(
      {required this.id,
      required this.image,
      required this.name,
      this.type,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$SubCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'SubCategoryModel(id: $id, image: $image, name: $name, type: $type, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, type, createdAt);

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryModelImplCopyWith<_$SubCategoryModelImpl> get copyWith =>
      __$$SubCategoryModelImplCopyWithImpl<_$SubCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryModel implements SubCategoryModel {
  const factory _SubCategoryModel(
          {required final int id,
          required final String image,
          required final String name,
          final String? type,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$SubCategoryModelImpl;

  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) =
      _$SubCategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryModelImplCopyWith<_$SubCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
