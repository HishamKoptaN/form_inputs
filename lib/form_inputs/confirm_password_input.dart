import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError { empty, mismatch }

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationError> {
  final String password;
  const ConfirmPasswordInput.pure({this.password = ''}) : super.pure('');
  const ConfirmPasswordInput.dirty({required this.password, String value = ''})
      : super.dirty(value);
  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (value.trim().isEmpty) return ConfirmPasswordValidationError.empty;
    if (value != password) return ConfirmPasswordValidationError.mismatch;
    return null;
  }
}

extension ConfirmPasswordValidationErrorX on ConfirmPasswordValidationError {
  String get message {
    switch (this) {
      case ConfirmPasswordValidationError.empty:
        return 'يرجى تأكيد كلمة المرور';
      case ConfirmPasswordValidationError.mismatch:
        return 'كلمة المرور غير متطابقة';
    }
  }
}
