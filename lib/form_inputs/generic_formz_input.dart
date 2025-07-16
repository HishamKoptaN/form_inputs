import 'package:formz/formz.dart';

enum GenericValidationError { empty, custom }

class GenericFormzInput<T> extends FormzInput<T?, GenericValidationError> {
  final String? Function(T?)? customValidator;

  const GenericFormzInput.pure({this.customValidator}) : super.pure(null);
  const GenericFormzInput.dirty(T? value, {this.customValidator})
    : super.dirty(value);

  @override
  GenericValidationError? validator(T? value) {
    if (value == null) return GenericValidationError.empty;
    if (value is String && value.trim().isEmpty) {
      return GenericValidationError.empty;
    }

    final result = customValidator?.call(value);
    if (result != null && result.isNotEmpty) {
      return GenericValidationError.custom;
    }

    return null;
  }

  String? get errorMessage => switch (error) {
    GenericValidationError.empty => 'هذا الحقل مطلوب',
    GenericValidationError.custom => customValidator?.call(value),
    _ => null,
  };
}
