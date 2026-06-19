import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid, domainNotAllowed }

class EmailFormInput extends FormzInput<String, EmailValidationError> {
  const EmailFormInput.pure({this.allowedDomains}) : super.pure('');
  const EmailFormInput.dirty([super.value = '', this.allowedDomains])
      : super.dirty();
  final List<String>? allowedDomains;
  String? get errorMessage {
    if (error == null) return null;
    return error!.message(allowedDomains);
  }

  static final RegExp _emailRegex = RegExp(
    r'^[\w\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$',
  );
  @override
  EmailValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return EmailValidationError.empty;
    if (!_emailRegex.hasMatch(trimmed)) return EmailValidationError.invalid;
    if (allowedDomains != null && allowedDomains!.isNotEmpty) {
      final domain = trimmed.split('@').last.toLowerCase();
      if (!allowedDomains!.contains(domain)) {
        return EmailValidationError.domainNotAllowed;
      }
    }
    return null;
  }
}

extension EmailValidationErrorX on EmailValidationError {
  String message([List<String>? allowedDomains]) {
    return switch (this) {
      EmailValidationError.empty => 'يرجى إدخال البريد الإلكتروني',
      EmailValidationError.invalid => 'صيغة البريد الإلكتروني غير صحيحة',
      EmailValidationError.domainNotAllowed =>
        ' نطاق البريد الإلكتروني غير مسموح به مسموح فقط بنطاقات: ${allowedDomains?.join(', ')}',
    };
  }
}
