// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inputs_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputsEntity {
  GenericFormzInput? get name;
  GenericFormzInput? get description;
  EmailInput? get email;
  PasswordInput? get password;
  ConfirmPasswordInput? get confirmPassword;
  PhoneNumberInput? get phoneNumber;
  GenericFormzInput? get dialCode;
  GenericFormzInput? get isoCode;
  BoolFormzInput? get isValidNumber;
  BoolFormzInput? get termsAccepted;
  bool? get obscurePassword;
  bool? get rememberMe;

  /// Create a copy of InputsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputsEntityCopyWith<InputsEntity> get copyWith =>
      _$InputsEntityCopyWithImpl<InputsEntity>(
          this as InputsEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputsEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.isValidNumber, isValidNumber) ||
                other.isValidNumber == isValidNumber) &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      email,
      password,
      confirmPassword,
      phoneNumber,
      dialCode,
      isoCode,
      isValidNumber,
      termsAccepted,
      obscurePassword,
      rememberMe);

  @override
  String toString() {
    return 'InputsEntity(name: $name, description: $description, email: $email, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber, termsAccepted: $termsAccepted, obscurePassword: $obscurePassword, rememberMe: $rememberMe)';
  }
}

/// @nodoc
abstract mixin class $InputsEntityCopyWith<$Res> {
  factory $InputsEntityCopyWith(
          InputsEntity value, $Res Function(InputsEntity) _then) =
      _$InputsEntityCopyWithImpl;
  @useResult
  $Res call(
      {GenericFormzInput? name,
      GenericFormzInput? description,
      EmailInput? email,
      PasswordInput? password,
      ConfirmPasswordInput? confirmPassword,
      PhoneNumberInput? phoneNumber,
      GenericFormzInput? dialCode,
      GenericFormzInput? isoCode,
      BoolFormzInput? isValidNumber,
      BoolFormzInput? termsAccepted,
      bool? obscurePassword,
      bool? rememberMe});
}

/// @nodoc
class _$InputsEntityCopyWithImpl<$Res> implements $InputsEntityCopyWith<$Res> {
  _$InputsEntityCopyWithImpl(this._self, this._then);

  final InputsEntity _self;
  final $Res Function(InputsEntity) _then;

  /// Create a copy of InputsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? phoneNumber = freezed,
    Object? dialCode = freezed,
    Object? isoCode = freezed,
    Object? isValidNumber = freezed,
    Object? termsAccepted = freezed,
    Object? obscurePassword = freezed,
    Object? rememberMe = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput?,
      confirmPassword: freezed == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberInput?,
      dialCode: freezed == dialCode
          ? _self.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      isoCode: freezed == isoCode
          ? _self.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      isValidNumber: freezed == isValidNumber
          ? _self.isValidNumber
          : isValidNumber // ignore: cast_nullable_to_non_nullable
              as BoolFormzInput?,
      termsAccepted: freezed == termsAccepted
          ? _self.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as BoolFormzInput?,
      obscurePassword: freezed == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      rememberMe: freezed == rememberMe
          ? _self.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [InputsEntity].
extension InputsEntityPatterns on InputsEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InputsEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputsEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InputsEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputsEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InputsEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputsEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            GenericFormzInput? name,
            GenericFormzInput? description,
            EmailInput? email,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            PhoneNumberInput? phoneNumber,
            GenericFormzInput? dialCode,
            GenericFormzInput? isoCode,
            BoolFormzInput? isValidNumber,
            BoolFormzInput? termsAccepted,
            bool? obscurePassword,
            bool? rememberMe)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputsEntity() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.dialCode,
            _that.isoCode,
            _that.isValidNumber,
            _that.termsAccepted,
            _that.obscurePassword,
            _that.rememberMe);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            GenericFormzInput? name,
            GenericFormzInput? description,
            EmailInput? email,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            PhoneNumberInput? phoneNumber,
            GenericFormzInput? dialCode,
            GenericFormzInput? isoCode,
            BoolFormzInput? isValidNumber,
            BoolFormzInput? termsAccepted,
            bool? obscurePassword,
            bool? rememberMe)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputsEntity():
        return $default(
            _that.name,
            _that.description,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.dialCode,
            _that.isoCode,
            _that.isValidNumber,
            _that.termsAccepted,
            _that.obscurePassword,
            _that.rememberMe);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            GenericFormzInput? name,
            GenericFormzInput? description,
            EmailInput? email,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            PhoneNumberInput? phoneNumber,
            GenericFormzInput? dialCode,
            GenericFormzInput? isoCode,
            BoolFormzInput? isValidNumber,
            BoolFormzInput? termsAccepted,
            bool? obscurePassword,
            bool? rememberMe)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputsEntity() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.dialCode,
            _that.isoCode,
            _that.isValidNumber,
            _that.termsAccepted,
            _that.obscurePassword,
            _that.rememberMe);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InputsEntity implements InputsEntity {
  const _InputsEntity(
      {this.name,
      this.description,
      this.email,
      this.password,
      this.confirmPassword,
      this.phoneNumber,
      this.dialCode,
      this.isoCode,
      this.isValidNumber,
      this.termsAccepted,
      this.obscurePassword,
      this.rememberMe});

  @override
  final GenericFormzInput? name;
  @override
  final GenericFormzInput? description;
  @override
  final EmailInput? email;
  @override
  final PasswordInput? password;
  @override
  final ConfirmPasswordInput? confirmPassword;
  @override
  final PhoneNumberInput? phoneNumber;
  @override
  final GenericFormzInput? dialCode;
  @override
  final GenericFormzInput? isoCode;
  @override
  final BoolFormzInput? isValidNumber;
  @override
  final BoolFormzInput? termsAccepted;
  @override
  final bool? obscurePassword;
  @override
  final bool? rememberMe;

  /// Create a copy of InputsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputsEntityCopyWith<_InputsEntity> get copyWith =>
      __$InputsEntityCopyWithImpl<_InputsEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputsEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.isValidNumber, isValidNumber) ||
                other.isValidNumber == isValidNumber) &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      email,
      password,
      confirmPassword,
      phoneNumber,
      dialCode,
      isoCode,
      isValidNumber,
      termsAccepted,
      obscurePassword,
      rememberMe);

  @override
  String toString() {
    return 'InputsEntity(name: $name, description: $description, email: $email, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber, termsAccepted: $termsAccepted, obscurePassword: $obscurePassword, rememberMe: $rememberMe)';
  }
}

/// @nodoc
abstract mixin class _$InputsEntityCopyWith<$Res>
    implements $InputsEntityCopyWith<$Res> {
  factory _$InputsEntityCopyWith(
          _InputsEntity value, $Res Function(_InputsEntity) _then) =
      __$InputsEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GenericFormzInput? name,
      GenericFormzInput? description,
      EmailInput? email,
      PasswordInput? password,
      ConfirmPasswordInput? confirmPassword,
      PhoneNumberInput? phoneNumber,
      GenericFormzInput? dialCode,
      GenericFormzInput? isoCode,
      BoolFormzInput? isValidNumber,
      BoolFormzInput? termsAccepted,
      bool? obscurePassword,
      bool? rememberMe});
}

/// @nodoc
class __$InputsEntityCopyWithImpl<$Res>
    implements _$InputsEntityCopyWith<$Res> {
  __$InputsEntityCopyWithImpl(this._self, this._then);

  final _InputsEntity _self;
  final $Res Function(_InputsEntity) _then;

  /// Create a copy of InputsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? phoneNumber = freezed,
    Object? dialCode = freezed,
    Object? isoCode = freezed,
    Object? isValidNumber = freezed,
    Object? termsAccepted = freezed,
    Object? obscurePassword = freezed,
    Object? rememberMe = freezed,
  }) {
    return _then(_InputsEntity(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput?,
      confirmPassword: freezed == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberInput?,
      dialCode: freezed == dialCode
          ? _self.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      isoCode: freezed == isoCode
          ? _self.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput?,
      isValidNumber: freezed == isValidNumber
          ? _self.isValidNumber
          : isValidNumber // ignore: cast_nullable_to_non_nullable
              as BoolFormzInput?,
      termsAccepted: freezed == termsAccepted
          ? _self.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as BoolFormzInput?,
      obscurePassword: freezed == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      rememberMe: freezed == rememberMe
          ? _self.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
