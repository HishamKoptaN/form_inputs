import 'package:formz/formz.dart';

enum GenericValidationError {
  empty,
  custom,
  tooShort,
  tooLong,
  invalidLength,
}

class GenericFormzInput extends FormzInput<String, GenericValidationError> {
  final String? Function(String)? customValidator;
  final int? minLength;
  final int? maxLength;
  final int? exactLength;

  const GenericFormzInput.pure({
    this.customValidator,
    this.minLength,
    this.maxLength,
    this.exactLength,
  }) : super.pure('');

  const GenericFormzInput.dirty(
    String value, {
    this.customValidator,
    this.minLength,
    this.maxLength,
    this.exactLength,
  }) : super.dirty(value);

  @override
  GenericValidationError? validator(String value) {
    final v = value.trim();

    if (v.isEmpty) {
      return GenericValidationError.empty;
    }

    // exact length
    if (exactLength != null && v.length != exactLength) {
      return GenericValidationError.invalidLength;
    }

    // min length
    if (minLength != null && v.length < minLength!) {
      return GenericValidationError.tooShort;
    }

    // max length
    if (maxLength != null && v.length > maxLength!) {
      return GenericValidationError.tooLong;
    }

    final result = customValidator?.call(v);
    if (result != null && result.isNotEmpty) {
      return GenericValidationError.custom;
    }

    return null;
  }

  String? get errorMessage => switch (error) {
        GenericValidationError.empty => 'هذا الحقل مطلوب',
        GenericValidationError.tooShort => 'القيمة قصيرة جدًا',
        GenericValidationError.tooLong => 'القيمة طويلة جدًا',
        GenericValidationError.invalidLength => 'عدد الحروف غير صحيح',
        GenericValidationError.custom => customValidator?.call(value),
        _ => null,
      };
}
