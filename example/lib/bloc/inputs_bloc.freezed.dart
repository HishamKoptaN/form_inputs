// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inputs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputsEvent implements DiagnosticableTreeMixin {
  InputsEntity get inputs;

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputsEventCopyWith<InputsEvent> get copyWith =>
      _$InputsEventCopyWithImpl<InputsEvent>(this as InputsEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InputsEvent'))
      ..add(DiagnosticsProperty('inputs', inputs));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputsEvent &&
            (identical(other.inputs, inputs) || other.inputs == inputs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputs);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsEvent(inputs: $inputs)';
  }
}

/// @nodoc
abstract mixin class $InputsEventCopyWith<$Res> {
  factory $InputsEventCopyWith(
          InputsEvent value, $Res Function(InputsEvent) _then) =
      _$InputsEventCopyWithImpl;
  @useResult
  $Res call({InputsEntity inputs});

  $InputsEntityCopyWith<$Res> get inputs;
}

/// @nodoc
class _$InputsEventCopyWithImpl<$Res> implements $InputsEventCopyWith<$Res> {
  _$InputsEventCopyWithImpl(this._self, this._then);

  final InputsEvent _self;
  final $Res Function(InputsEvent) _then;

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputs = null,
  }) {
    return _then(_self.copyWith(
      inputs: null == inputs
          ? _self.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as InputsEntity,
    ));
  }

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputsEntityCopyWith<$Res> get inputs {
    return $InputsEntityCopyWith<$Res>(_self.inputs, (value) {
      return _then(_self.copyWith(inputs: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InputsEvent].
extension InputsEventPatterns on InputsEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged() when dataChanged != null:
        return dataChanged(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged():
        return dataChanged(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged() when dataChanged != null:
        return dataChanged(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputsEntity inputs)? dataChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged() when dataChanged != null:
        return dataChanged(_that.inputs);
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
  TResult when<TResult extends Object?>({
    required TResult Function(InputsEntity inputs) dataChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged():
        return dataChanged(_that.inputs);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputsEntity inputs)? dataChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _DataChanged() when dataChanged != null:
        return dataChanged(_that.inputs);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DataChanged with DiagnosticableTreeMixin implements InputsEvent {
  const _DataChanged({required this.inputs});

  @override
  final InputsEntity inputs;

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataChangedCopyWith<_DataChanged> get copyWith =>
      __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InputsEvent.dataChanged'))
      ..add(DiagnosticsProperty('inputs', inputs));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataChanged &&
            (identical(other.inputs, inputs) || other.inputs == inputs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputs);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsEvent.dataChanged(inputs: $inputs)';
  }
}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res>
    implements $InputsEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(
          _DataChanged value, $Res Function(_DataChanged) _then) =
      __$DataChangedCopyWithImpl;
  @override
  @useResult
  $Res call({InputsEntity inputs});

  @override
  $InputsEntityCopyWith<$Res> get inputs;
}

/// @nodoc
class __$DataChangedCopyWithImpl<$Res> implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inputs = null,
  }) {
    return _then(_DataChanged(
      inputs: null == inputs
          ? _self.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as InputsEntity,
    ));
  }

  /// Create a copy of InputsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputsEntityCopyWith<$Res> get inputs {
    return $InputsEntityCopyWith<$Res>(_self.inputs, (value) {
      return _then(_self.copyWith(inputs: value));
    });
  }
}

/// @nodoc
mixin _$InputsState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InputsState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InputsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState()';
  }
}

/// @nodoc
class $InputsStateCopyWith<$Res> {
  $InputsStateCopyWith(InputsState _, $Res Function(InputsState) __);
}

/// Adds pattern-matching-related methods to [InputsState].
extension InputsStatePatterns on InputsState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Success():
        return success(_that);
      case _Loaded():
        return loaded(_that);
      case _Failure():
        return failure(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            InputsEntity inputs, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success();
      case _Loaded() when loaded != null:
        return loaded(_that.inputs, _that.formzSubmissionStatus);
      case _Failure() when failure != null:
        return failure(_that.error);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            InputsEntity inputs, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function(String error) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _Success():
        return success();
      case _Loaded():
        return loaded(_that.inputs, _that.formzSubmissionStatus);
      case _Failure():
        return failure(_that.error);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            InputsEntity inputs, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function(String error)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success();
      case _Loaded() when loaded != null:
        return loaded(_that.inputs, _that.formzSubmissionStatus);
      case _Failure() when failure != null:
        return failure(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial with DiagnosticableTreeMixin implements InputsState {
  const _Initial();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InputsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState.initial()';
  }
}

/// @nodoc

class _Loading with DiagnosticableTreeMixin implements InputsState {
  const _Loading();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InputsState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState.loading()';
  }
}

/// @nodoc

class _Success with DiagnosticableTreeMixin implements InputsState {
  const _Success();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InputsState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState.success()';
  }
}

/// @nodoc

class _Loaded with DiagnosticableTreeMixin implements InputsState {
  const _Loaded({required this.inputs, required this.formzSubmissionStatus});

  final InputsEntity inputs;
  final FormzSubmissionStatus formzSubmissionStatus;

  /// Create a copy of InputsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InputsState.loaded'))
      ..add(DiagnosticsProperty('inputs', inputs))
      ..add(
          DiagnosticsProperty('formzSubmissionStatus', formzSubmissionStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            (identical(other.inputs, inputs) || other.inputs == inputs) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputs, formzSubmissionStatus);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState.loaded(inputs: $inputs, formzSubmissionStatus: $formzSubmissionStatus)';
  }
}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res>
    implements $InputsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) =
      __$LoadedCopyWithImpl;
  @useResult
  $Res call({InputsEntity inputs, FormzSubmissionStatus formzSubmissionStatus});

  $InputsEntityCopyWith<$Res> get inputs;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

  /// Create a copy of InputsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inputs = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_Loaded(
      inputs: null == inputs
          ? _self.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as InputsEntity,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _self.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }

  /// Create a copy of InputsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputsEntityCopyWith<$Res> get inputs {
    return $InputsEntityCopyWith<$Res>(_self.inputs, (value) {
      return _then(_self.copyWith(inputs: value));
    });
  }
}

/// @nodoc

class _Failure with DiagnosticableTreeMixin implements InputsState {
  const _Failure({required this.error});

  final String error;

  /// Create a copy of InputsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InputsState.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputsState.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $InputsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of InputsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_Failure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
