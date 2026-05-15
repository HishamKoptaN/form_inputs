import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError {
  empty,
  mismatched,
}

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationError> {
  final String password;
  const ConfirmPasswordInput.pure({this.password = ''}) : super.pure('');
  const ConfirmPasswordInput.dirty({
    String value = '',
    this.password = '',
  }) : super.dirty(value);

  bool get hasPassword => password.trim().isNotEmpty;

  bool get hasConfirmPassword => value.trim().isNotEmpty;

  bool get isMatched => hasPassword && hasConfirmPassword && value == password;

  bool get isMismatched =>
      hasPassword && hasConfirmPassword && value != password;

  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (isPure) return null;

    if (!hasPassword) return null;

    if (value.trim().isEmpty) {
      return ConfirmPasswordValidationError.empty;
    }

    if (value != password) {
      return ConfirmPasswordValidationError.mismatched;
    }

    return null;
  }
}

extension ConfirmPasswordValidationErrorX on ConfirmPasswordValidationError {
  String get message {
    switch (this) {
      case ConfirmPasswordValidationError.empty:
        return  'يرجى تأكيد كلمة المرور';
      case ConfirmPasswordValidationError.mismatched:
        return 'كلمة المرور غير متطابقة';
    }
  }
}
