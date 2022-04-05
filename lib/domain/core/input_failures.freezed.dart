// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputFailuresTearOff {
  const _$InputFailuresTearOff();

  _Empty empty(String input) {
    return _Empty(
      input,
    );
  }

  _InvalidPhoneNumber invalidPhoneNumber(String input) {
    return _InvalidPhoneNumber(
      input,
    );
  }

  _InvalidPassportNumber invalidPassportNumber(String input) {
    return _InvalidPassportNumber(
      input,
    );
  }

  _InvalidOTP invalidOTP(String input) {
    return _InvalidOTP(
      input,
    );
  }

  _ShortPassword shortPassword(String input) {
    return _ShortPassword(
      input,
    );
  }

  _PasswordMostBe passwordMustBe(String input) {
    return _PasswordMostBe(
      input,
    );
  }

  _InvalidCardNumber invalidCardNumber(String input) {
    return _InvalidCardNumber(
      input,
    );
  }

  _InvalidCardExp invalidCardExp(String input) {
    return _InvalidCardExp(
      input,
    );
  }
}

/// @nodoc
const $InputFailures = _$InputFailuresTearOff();

/// @nodoc
mixin _$InputFailures {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputFailuresCopyWith<InputFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputFailuresCopyWith<$Res> {
  factory $InputFailuresCopyWith(
          InputFailures value, $Res Function(InputFailures) then) =
      _$InputFailuresCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$InputFailuresCopyWithImpl<$Res>
    implements $InputFailuresCopyWith<$Res> {
  _$InputFailuresCopyWithImpl(this._value, this._then);

  final InputFailures _value;
  // ignore: unused_field
  final $Res Function(InputFailures) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $InputFailuresCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$InputFailuresCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_Empty(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Empty extends _Empty {
  const _$_Empty(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.empty(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return empty(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return empty?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends InputFailures {
  const factory _Empty(String input) = _$_Empty;
  const _Empty._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidPhoneNumberCopyWith(
          _InvalidPhoneNumber value, $Res Function(_InvalidPhoneNumber) then) =
      __$InvalidPhoneNumberCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidPhoneNumberCopyWith<$Res> {
  __$InvalidPhoneNumberCopyWithImpl(
      _InvalidPhoneNumber _value, $Res Function(_InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber));

  @override
  _InvalidPhoneNumber get _value => super._value as _InvalidPhoneNumber;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidPhoneNumber(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber extends _InvalidPhoneNumber {
  const _$_InvalidPhoneNumber(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidPhoneNumber(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidPhoneNumber &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<_InvalidPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return invalidPhoneNumber(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return invalidPhoneNumber?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber extends InputFailures {
  const factory _InvalidPhoneNumber(String input) = _$_InvalidPhoneNumber;
  const _InvalidPhoneNumber._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPassportNumberCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidPassportNumberCopyWith(_InvalidPassportNumber value,
          $Res Function(_InvalidPassportNumber) then) =
      __$InvalidPassportNumberCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidPassportNumberCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidPassportNumberCopyWith<$Res> {
  __$InvalidPassportNumberCopyWithImpl(_InvalidPassportNumber _value,
      $Res Function(_InvalidPassportNumber) _then)
      : super(_value, (v) => _then(v as _InvalidPassportNumber));

  @override
  _InvalidPassportNumber get _value => super._value as _InvalidPassportNumber;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidPassportNumber(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPassportNumber extends _InvalidPassportNumber {
  const _$_InvalidPassportNumber(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidPassportNumber(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidPassportNumber &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidPassportNumberCopyWith<_InvalidPassportNumber> get copyWith =>
      __$InvalidPassportNumberCopyWithImpl<_InvalidPassportNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return invalidPassportNumber(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return invalidPassportNumber?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidPassportNumber != null) {
      return invalidPassportNumber(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return invalidPassportNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return invalidPassportNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidPassportNumber != null) {
      return invalidPassportNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassportNumber extends InputFailures {
  const factory _InvalidPassportNumber(String input) = _$_InvalidPassportNumber;
  const _InvalidPassportNumber._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidPassportNumberCopyWith<_InvalidPassportNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidOTPCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidOTPCopyWith(
          _InvalidOTP value, $Res Function(_InvalidOTP) then) =
      __$InvalidOTPCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidOTPCopyWithImpl<$Res> extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidOTPCopyWith<$Res> {
  __$InvalidOTPCopyWithImpl(
      _InvalidOTP _value, $Res Function(_InvalidOTP) _then)
      : super(_value, (v) => _then(v as _InvalidOTP));

  @override
  _InvalidOTP get _value => super._value as _InvalidOTP;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidOTP(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidOTP extends _InvalidOTP {
  const _$_InvalidOTP(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidOTP(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidOTP &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidOTPCopyWith<_InvalidOTP> get copyWith =>
      __$InvalidOTPCopyWithImpl<_InvalidOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return invalidOTP(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return invalidOTP?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidOTP != null) {
      return invalidOTP(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return invalidOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return invalidOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidOTP != null) {
      return invalidOTP(this);
    }
    return orElse();
  }
}

abstract class _InvalidOTP extends InputFailures {
  const factory _InvalidOTP(String input) = _$_InvalidOTP;
  const _InvalidOTP._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidOTPCopyWith<_InvalidOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword value, $Res Function(_ShortPassword) then) =
      __$ShortPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$ShortPasswordCopyWith<$Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword _value, $Res Function(_ShortPassword) _then)
      : super(_value, (v) => _then(v as _ShortPassword));

  @override
  _ShortPassword get _value => super._value as _ShortPassword;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_ShortPassword(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShortPassword extends _ShortPassword {
  const _$_ShortPassword(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.shortPassword(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortPassword &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      __$ShortPasswordCopyWithImpl<_ShortPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return shortPassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return shortPassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword extends InputFailures {
  const factory _ShortPassword(String input) = _$_ShortPassword;
  const _ShortPassword._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordMostBeCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$PasswordMostBeCopyWith(
          _PasswordMostBe value, $Res Function(_PasswordMostBe) then) =
      __$PasswordMostBeCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$PasswordMostBeCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$PasswordMostBeCopyWith<$Res> {
  __$PasswordMostBeCopyWithImpl(
      _PasswordMostBe _value, $Res Function(_PasswordMostBe) _then)
      : super(_value, (v) => _then(v as _PasswordMostBe));

  @override
  _PasswordMostBe get _value => super._value as _PasswordMostBe;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_PasswordMostBe(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordMostBe extends _PasswordMostBe {
  const _$_PasswordMostBe(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.passwordMustBe(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordMostBe &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$PasswordMostBeCopyWith<_PasswordMostBe> get copyWith =>
      __$PasswordMostBeCopyWithImpl<_PasswordMostBe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return passwordMustBe(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return passwordMustBe?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (passwordMustBe != null) {
      return passwordMustBe(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return passwordMustBe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return passwordMustBe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (passwordMustBe != null) {
      return passwordMustBe(this);
    }
    return orElse();
  }
}

abstract class _PasswordMostBe extends InputFailures {
  const factory _PasswordMostBe(String input) = _$_PasswordMostBe;
  const _PasswordMostBe._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$PasswordMostBeCopyWith<_PasswordMostBe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidCardNumberCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidCardNumberCopyWith(
          _InvalidCardNumber value, $Res Function(_InvalidCardNumber) then) =
      __$InvalidCardNumberCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidCardNumberCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidCardNumberCopyWith<$Res> {
  __$InvalidCardNumberCopyWithImpl(
      _InvalidCardNumber _value, $Res Function(_InvalidCardNumber) _then)
      : super(_value, (v) => _then(v as _InvalidCardNumber));

  @override
  _InvalidCardNumber get _value => super._value as _InvalidCardNumber;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidCardNumber(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidCardNumber extends _InvalidCardNumber {
  const _$_InvalidCardNumber(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidCardNumber(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidCardNumber &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidCardNumberCopyWith<_InvalidCardNumber> get copyWith =>
      __$InvalidCardNumberCopyWithImpl<_InvalidCardNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return invalidCardNumber(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return invalidCardNumber?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidCardNumber != null) {
      return invalidCardNumber(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return invalidCardNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return invalidCardNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidCardNumber != null) {
      return invalidCardNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidCardNumber extends InputFailures {
  const factory _InvalidCardNumber(String input) = _$_InvalidCardNumber;
  const _InvalidCardNumber._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidCardNumberCopyWith<_InvalidCardNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidCardExpCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidCardExpCopyWith(
          _InvalidCardExp value, $Res Function(_InvalidCardExp) then) =
      __$InvalidCardExpCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidCardExpCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidCardExpCopyWith<$Res> {
  __$InvalidCardExpCopyWithImpl(
      _InvalidCardExp _value, $Res Function(_InvalidCardExp) _then)
      : super(_value, (v) => _then(v as _InvalidCardExp));

  @override
  _InvalidCardExp get _value => super._value as _InvalidCardExp;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidCardExp(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidCardExp extends _InvalidCardExp {
  const _$_InvalidCardExp(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidCardExp(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidCardExp &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidCardExpCopyWith<_InvalidCardExp> get copyWith =>
      __$InvalidCardExpCopyWithImpl<_InvalidCardExp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidPhoneNumber,
    required TResult Function(String input) invalidPassportNumber,
    required TResult Function(String input) invalidOTP,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) invalidCardNumber,
    required TResult Function(String input) invalidCardExp,
  }) {
    return invalidCardExp(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
  }) {
    return invalidCardExp?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidPhoneNumber,
    TResult Function(String input)? invalidPassportNumber,
    TResult Function(String input)? invalidOTP,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? invalidCardNumber,
    TResult Function(String input)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidCardExp != null) {
      return invalidCardExp(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidPassportNumber value)
        invalidPassportNumber,
    required TResult Function(_InvalidOTP value) invalidOTP,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_InvalidCardNumber value) invalidCardNumber,
    required TResult Function(_InvalidCardExp value) invalidCardExp,
  }) {
    return invalidCardExp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
  }) {
    return invalidCardExp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidPassportNumber value)? invalidPassportNumber,
    TResult Function(_InvalidOTP value)? invalidOTP,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_InvalidCardNumber value)? invalidCardNumber,
    TResult Function(_InvalidCardExp value)? invalidCardExp,
    required TResult orElse(),
  }) {
    if (invalidCardExp != null) {
      return invalidCardExp(this);
    }
    return orElse();
  }
}

abstract class _InvalidCardExp extends InputFailures {
  const factory _InvalidCardExp(String input) = _$_InvalidCardExp;
  const _InvalidCardExp._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidCardExpCopyWith<_InvalidCardExp> get copyWith =>
      throw _privateConstructorUsedError;
}
