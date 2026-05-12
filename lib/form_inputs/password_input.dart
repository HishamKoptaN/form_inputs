import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  tooShort,
  noUppercase,
  noLowercase,
  noNumber,
  noSymbol
}

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  final bool strictValidation;
  const PasswordInput.pure({this.strictValidation = false}) : super.pure('');
  const PasswordInput.dirty([super.value = '', this.strictValidation = false])
      : super.dirty();
  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    if (value.length < 6) return PasswordValidationError.tooShort;
    if (strictValidation) {
      final hasUppercase = value.contains(RegExp(r'[A-Z]'));
      if (!hasUppercase) return PasswordValidationError.noUppercase;

      final hasLowercase = value.contains(RegExp(r'[a-z]'));
      if (!hasLowercase) return PasswordValidationError.noLowercase;

      final hasNumber = value.contains(RegExp(r'[0-9]'));
      if (!hasNumber) return PasswordValidationError.noNumber;

      final hasSymbol = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
      if (!hasSymbol) return PasswordValidationError.noSymbol;
    }

    return null;
  }

  String? get errorMessage {
    return switch (error) {
      PasswordValidationError.empty => 'كلمة المرور مطلوبة',
      PasswordValidationError.tooShort =>
        'كلمة المرور يجب أن تكون 6 أحرف أو أرقام على الأقل',
      PasswordValidationError.noUppercase =>
        'كلمة المرور يجب أن تحتوي على حرف كبير على الأقل',
      PasswordValidationError.noLowercase =>
        'كلمة المرور يجب أن تحتوي على حرف صغير على الأقل',
      PasswordValidationError.noNumber =>
        'كلمة المرور يجب أن تحتوي على رقم على الأقل',
      PasswordValidationError.noSymbol =>
        'كلمة المرور يجب أن تحتوي على رمز على الأقل',
      _ => null,
    };
  }
}
