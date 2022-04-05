// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {bool isLoading = false,
      bool isLoading2 = false,
      bool hasError = false,
      bool hasError2 = false,
      bool isLoginSuccess = false,
      String error = ''}) {
    return _SignInState(
      isLoading: isLoading,
      isLoading2: isLoading2,
      hasError: hasError,
      hasError2: hasError2,
      isLoginSuccess: isLoginSuccess,
      error: error,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoading2 => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get hasError2 => throw _privateConstructorUsedError;
  bool get isLoginSuccess => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoading2,
      bool hasError,
      bool hasError2,
      bool isLoginSuccess,
      String error});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoading2 = freezed,
    Object? hasError = freezed,
    Object? hasError2 = freezed,
    Object? isLoginSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading2: isLoading2 == freezed
          ? _value.isLoading2
          : isLoading2 // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError2: hasError2 == freezed
          ? _value.hasError2
          : hasError2 // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: isLoginSuccess == freezed
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoading2,
      bool hasError,
      bool hasError2,
      bool isLoginSuccess,
      String error});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoading2 = freezed,
    Object? hasError = freezed,
    Object? hasError2 = freezed,
    Object? isLoginSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_SignInState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading2: isLoading2 == freezed
          ? _value.isLoading2
          : isLoading2 // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError2: hasError2 == freezed
          ? _value.hasError2
          : hasError2 // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: isLoginSuccess == freezed
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.isLoading = false,
      this.isLoading2 = false,
      this.hasError = false,
      this.hasError2 = false,
      this.isLoginSuccess = false,
      this.error = ''})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isLoading2;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final bool hasError2;
  @JsonKey()
  @override
  final bool isLoginSuccess;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'SignInState(isLoading: $isLoading, isLoading2: $isLoading2, hasError: $hasError, hasError2: $hasError2, isLoginSuccess: $isLoginSuccess, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoading2, isLoading2) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.hasError2, hasError2) &&
            const DeepCollectionEquality()
                .equals(other.isLoginSuccess, isLoginSuccess) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoading2),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(hasError2),
      const DeepCollectionEquality().hash(isLoginSuccess),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {bool isLoading,
      bool isLoading2,
      bool hasError,
      bool hasError2,
      bool isLoginSuccess,
      String error}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isLoading2;
  @override
  bool get hasError;
  @override
  bool get hasError2;
  @override
  bool get isLoginSuccess;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
