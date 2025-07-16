import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([super.value = '']) : super.dirty();
  static final RegExp _emailRegex = RegExp(
    r'^[\w\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$',
  );
  @override
  EmailValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return EmailValidationError.empty;
    if (!_emailRegex.hasMatch(trimmed)) return EmailValidationError.invalid;
    return null;
  }
}

extension EmailValidationErrorX on EmailValidationError {
  String get message => switch (this) {
    EmailValidationError.empty => 'يرجى إدخال البريد الإلكتروني',
    EmailValidationError.invalid => 'صيغة البريد الإلكتروني غير صحيحة',
  };
}
