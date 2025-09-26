import 'package:formz/formz.dart';

enum PasswordValidationError { empty, tooShort, tooWeak }

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  final bool strictValidation;

  const PasswordInput.pure({this.strictValidation = false}) : super.pure('');
  const PasswordInput.dirty([String value = '', this.strictValidation = false])
    : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    if (value.length < 6) return PasswordValidationError.tooShort;

    if (strictValidation) {
      final hasUppercase = value.contains(RegExp(r'[A-Z]'));
      final hasLowercase = value.contains(RegExp(r'[a-z]'));
      final hasNumber = value.contains(RegExp(r'[0-9]'));
      final hasSymbol = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
      if (!(hasUppercase && hasLowercase && hasNumber && hasSymbol)) {
        return PasswordValidationError.tooWeak;
      }
    }

    return null;
  }
}

extension PasswordValidationErrorX on PasswordValidationError {
  String get message {
    switch (this) {
      case PasswordValidationError.empty:
        return 'كلمة المرور مطلوبة';
      case PasswordValidationError.tooShort:
        return 'كلمة المرور يجب أن تكون 6 أحرف أو أرقام على الأقل';
      case PasswordValidationError.tooWeak:
        return 'كلمة المرور ضعيفة (يجب أن تحتوي على حروف كبيرة وصغيرة + أرقام + رموز)';
    }
  }
}
