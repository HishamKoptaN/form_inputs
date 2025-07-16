import 'package:formz/formz.dart';

enum PasswordValidationError { empty, tooWeak }

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    if (value.length < 8 ||
        !value.contains(RegExp(r'[A-Z]')) ||
        !value.contains(RegExp(r'[0-9]'))) {
      return PasswordValidationError.tooWeak;
    }
    return null;
  }
}

class LoginPasswordInput extends FormzInput<String, PasswordValidationError> {
  const LoginPasswordInput.pure() : super.pure('');
  const LoginPasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    return null;
  }
}

extension PasswordValidationErrorX on PasswordValidationError {
  String get message {
    switch (this) {
      case PasswordValidationError.empty:
        return 'كلمة المرور مطلوبة';
      case PasswordValidationError.tooWeak:
        return 'كلمة المرور ضعيفة (يجب أن تحتوي على 8 أحرف على الأقل، حرف كبير، ورقم)';
    }
  }
}
