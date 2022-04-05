// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {bool isLoading = false,
      bool hasError = false,
      bool isResetPassword = false,
      bool isExistEmail = false,
      String error = ''}) {
    return _ForgotPasswordState(
      isLoading: isLoading,
      hasError: hasError,
      isResetPassword: isResetPassword,
      isExistEmail: isExistEmail,
      error: error,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isResetPassword => throw _privateConstructorUsedError;
  bool get isExistEmail => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isResetPassword,
      bool isExistEmail,
      String error});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isResetPassword = freezed,
    Object? isExistEmail = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetPassword: isResetPassword == freezed
          ? _value.isResetPassword
          : isResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isExistEmail: isExistEmail == freezed
          ? _value.isExistEmail
          : isExistEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isResetPassword,
      bool isExistEmail,
      String error});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isResetPassword = freezed,
    Object? isExistEmail = freezed,
    Object? error = freezed,
  }) {
    return _then(_ForgotPasswordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetPassword: isResetPassword == freezed
          ? _value.isResetPassword
          : isResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isExistEmail: isExistEmail == freezed
          ? _value.isExistEmail
          : isExistEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState extends _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {this.isLoading = false,
      this.hasError = false,
      this.isResetPassword = false,
      this.isExistEmail = false,
      this.error = ''})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final bool isResetPassword;
  @JsonKey()
  @override
  final bool isExistEmail;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, hasError: $hasError, isResetPassword: $isResetPassword, isExistEmail: $isExistEmail, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isResetPassword, isResetPassword) &&
            const DeepCollectionEquality()
                .equals(other.isExistEmail, isExistEmail) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isResetPassword),
      const DeepCollectionEquality().hash(isExistEmail),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState extends ForgotPasswordState {
  const factory _ForgotPasswordState(
      {bool isLoading,
      bool hasError,
      bool isResetPassword,
      bool isExistEmail,
      String error}) = _$_ForgotPasswordState;
  const _ForgotPasswordState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isResetPassword;
  @override
  bool get isExistEmail;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
