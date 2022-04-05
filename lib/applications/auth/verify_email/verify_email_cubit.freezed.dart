// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyEmailStateTearOff {
  const _$VerifyEmailStateTearOff();

  _VerifyEmailState call(
      {bool isLoading = false,
      bool hasError = false,
      bool isVerifiedEmail = false,
      bool isResendVerificationCode = false,
      String error = ''}) {
    return _VerifyEmailState(
      isLoading: isLoading,
      hasError: hasError,
      isVerifiedEmail: isVerifiedEmail,
      isResendVerificationCode: isResendVerificationCode,
      error: error,
    );
  }
}

/// @nodoc
const $VerifyEmailState = _$VerifyEmailStateTearOff();

/// @nodoc
mixin _$VerifyEmailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isVerifiedEmail => throw _privateConstructorUsedError;
  bool get isResendVerificationCode => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailStateCopyWith<VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isVerifiedEmail,
      bool isResendVerificationCode,
      String error});
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

  final VerifyEmailState _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isVerifiedEmail = freezed,
    Object? isResendVerificationCode = freezed,
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
      isVerifiedEmail: isVerifiedEmail == freezed
          ? _value.isVerifiedEmail
          : isVerifiedEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendVerificationCode: isResendVerificationCode == freezed
          ? _value.isResendVerificationCode
          : isResendVerificationCode // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerifyEmailStateCopyWith<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  factory _$VerifyEmailStateCopyWith(
          _VerifyEmailState value, $Res Function(_VerifyEmailState) then) =
      __$VerifyEmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isVerifiedEmail,
      bool isResendVerificationCode,
      String error});
}

/// @nodoc
class __$VerifyEmailStateCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res>
    implements _$VerifyEmailStateCopyWith<$Res> {
  __$VerifyEmailStateCopyWithImpl(
      _VerifyEmailState _value, $Res Function(_VerifyEmailState) _then)
      : super(_value, (v) => _then(v as _VerifyEmailState));

  @override
  _VerifyEmailState get _value => super._value as _VerifyEmailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isVerifiedEmail = freezed,
    Object? isResendVerificationCode = freezed,
    Object? error = freezed,
  }) {
    return _then(_VerifyEmailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifiedEmail: isVerifiedEmail == freezed
          ? _value.isVerifiedEmail
          : isVerifiedEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendVerificationCode: isResendVerificationCode == freezed
          ? _value.isResendVerificationCode
          : isResendVerificationCode // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyEmailState extends _VerifyEmailState {
  const _$_VerifyEmailState(
      {this.isLoading = false,
      this.hasError = false,
      this.isVerifiedEmail = false,
      this.isResendVerificationCode = false,
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
  final bool isVerifiedEmail;
  @JsonKey()
  @override
  final bool isResendVerificationCode;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'VerifyEmailState(isLoading: $isLoading, hasError: $hasError, isVerifiedEmail: $isVerifiedEmail, isResendVerificationCode: $isResendVerificationCode, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyEmailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isVerifiedEmail, isVerifiedEmail) &&
            const DeepCollectionEquality().equals(
                other.isResendVerificationCode, isResendVerificationCode) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isVerifiedEmail),
      const DeepCollectionEquality().hash(isResendVerificationCode),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailStateCopyWith<_VerifyEmailState> get copyWith =>
      __$VerifyEmailStateCopyWithImpl<_VerifyEmailState>(this, _$identity);
}

abstract class _VerifyEmailState extends VerifyEmailState {
  const factory _VerifyEmailState(
      {bool isLoading,
      bool hasError,
      bool isVerifiedEmail,
      bool isResendVerificationCode,
      String error}) = _$_VerifyEmailState;
  const _VerifyEmailState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isVerifiedEmail;
  @override
  bool get isResendVerificationCode;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$VerifyEmailStateCopyWith<_VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
