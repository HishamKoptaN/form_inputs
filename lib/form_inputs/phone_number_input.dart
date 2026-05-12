import 'package:formz/formz.dart';

enum PhoneNumberValidationError {
  empty,
  invalid,
}

class PhoneNumberInput extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumberInput.pure() : super.pure('');
  const PhoneNumberInput.dirty([super.value = '']) : super.dirty();
  static final RegExp _phoneRegExp = RegExp(r'^[0-9]{6,15}$');
  @override
  PhoneNumberValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return PhoneNumberValidationError.empty;
    if (!_phoneRegExp.hasMatch(trimmed)) {
      return PhoneNumberValidationError.invalid;
    }
    return null;
  }
}

extension PhoneNumberValidationErrorX on PhoneNumberValidationError {
  String get message {
    return switch (this) {
      PhoneNumberValidationError.empty => 'يرجى إدخال رقم الهاتف',
      PhoneNumberValidationError.invalid =>
        'رقم الهاتف غير صالح (مثلاً: 201234)',
    };
  }
}
