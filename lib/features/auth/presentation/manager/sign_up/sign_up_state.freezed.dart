// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'sign_up_state.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('');

mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel signUpResponse) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel signUpResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel signUpResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
}

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel signUpResponse) loaded,
    required TResult Function(String message) error,
  }) =>
      initial();

  @override
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel signUpResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      initial?.call();

  @override
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel signUpResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      initial != null ? initial() : orElse();

  @override
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      initial(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other.runtimeType == runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Initial implements SignUpState {
  const factory _Initial() = _$InitialImpl;
}

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel signUpResponse) loaded,
    required TResult Function(String message) error,
  }) =>
      loading();

  @override
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel signUpResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      loading?.call();

  @override
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel signUpResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      loading != null ? loading() : orElse();

  @override
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      loading(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other.runtimeType == runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Loading implements SignUpState {
  const factory _Loading() = _$LoadingImpl;
}

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.signUpResponse);

  @override
  final ResponseModel signUpResponse;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel signUpResponse) loaded,
    required TResult Function(String message) error,
  }) =>
      loaded(signUpResponse);

  @override
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel signUpResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      loaded?.call(signUpResponse);

  @override
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel signUpResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      loaded != null ? loaded(signUpResponse) : orElse();

  @override
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      loaded(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is _$LoadedImpl &&
          other.signUpResponse == signUpResponse);

  @override
  int get hashCode => Object.hash(runtimeType, signUpResponse);
}

abstract class _Loaded implements SignUpState {
  const factory _Loaded(ResponseModel signUpResponse) = _$LoadedImpl;
  ResponseModel get signUpResponse;
}

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel signUpResponse) loaded,
    required TResult Function(String message) error,
  }) =>
      error(message);

  @override
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel signUpResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      error?.call(message);

  @override
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel signUpResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      error != null ? error(message) : orElse();

  @override
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      error(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is _$ErrorImpl &&
          other.message == message);

  @override
  int get hashCode => Object.hash(runtimeType, message);
}

abstract class _Error implements SignUpState {
  const factory _Error(String message) = _$ErrorImpl;
  String get message;
}
