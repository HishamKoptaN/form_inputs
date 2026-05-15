import 'package:formz/formz.dart';

enum GenericValidationError {
  empty,
  custom,
  short,
  long,
  invalidLength,
}

class GenericFormzInput extends FormzInput<String, GenericValidationError> {
  final String value;
  final String? Function(String)? customValidator;
  final int? minLength;
  final int? maxLength;
  final int? exactLength;
  final String? emptyMessage;
  final String? shortMessage;
  final String? longMessage;
  final String? invalidLengthMessage;
  final Map<GenericValidationError, String>? errorMessages;

  const GenericFormzInput.pure({
    this.value = '',
    this.customValidator,
    this.minLength,
    this.maxLength,
    this.exactLength,
    this.emptyMessage,
    this.shortMessage,
    this.longMessage,
    this.invalidLengthMessage,
    this.errorMessages,
  }) : super.pure('');

  const GenericFormzInput.dirty({
    required this.value,
    this.customValidator,
    this.minLength,
    this.maxLength,
    this.exactLength,
    this.emptyMessage,
    this.shortMessage,
    this.longMessage,
    this.invalidLengthMessage,
    this.errorMessages,
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
      return GenericValidationError.short;
    }
    if (maxLength != null && v.length > maxLength!) {
      return GenericValidationError.long;
    }

    final result = customValidator?.call(v);
    if (result != null && result.isNotEmpty) {
      return GenericValidationError.custom;
    }
    return null;
  }

  String? get errorMessage {
    if (error == null) return null;

    if (errorMessages != null && errorMessages!.containsKey(error)) {
      return errorMessages![error];
    }
    switch (error!) {
      case GenericValidationError.empty:
        return 'هذا الحقل مطلوب';

      case GenericValidationError.short:
        return 'المدخل اقصر من الحد الادني المسموح به';

      case GenericValidationError.long:
        return 'المدخل اكثر من الحد المسموح به';

      case GenericValidationError.invalidLength:
        return 'عدد الأحرف غير صحيح';

      case GenericValidationError.custom:
        return customValidator?.call(value);
    }
  }
}
