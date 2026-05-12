import 'package:formz/formz.dart';

enum GenericValidationError {
  empty,
  custom,
  tooShort,
  tooLong,
  invalidLength,
}

class GenericFormzInput extends FormzInput<String, GenericValidationError> {
  final String value;
  final String? Function(String)? customValidator;
  final int? minLength;
  final int? maxLength;
  final int? exactLength;

  const GenericFormzInput.pure({
    this.value = '',
    this.customValidator,
    this.minLength,
    this.maxLength,
    this.exactLength,
  }) : super.pure('');

  const GenericFormzInput.dirty({
    required this.value,
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
    if (exactLength != null && v.length != exactLength) {
      return GenericValidationError.invalidLength;
    }
    if (minLength != null && v.length < minLength!) {
      return GenericValidationError.tooShort;
    }
    if (maxLength != null && v.length > maxLength!) {
      return GenericValidationError.tooLong;
    }

    final result = customValidator?.call(v);
    if (result != null && result.isNotEmpty) {
      return GenericValidationError.custom;
    }
    return null;
  }

  String? get errorMessage {
    return switch (error) {
      GenericValidationError.empty => 'هذا الحقل مطلوب',
      GenericValidationError.tooShort => 'القيمة قصيرة جدًا',
      GenericValidationError.tooLong => 'القيمة طويلة جدًا',
      GenericValidationError.invalidLength => 'عدد الحروف غير صحيح',
      GenericValidationError.custom => customValidator?.call(value),
      _ => null,
    };
  }
}
