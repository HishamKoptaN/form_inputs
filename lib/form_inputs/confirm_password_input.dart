import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError {
  empty,
  mismatched,
}

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationError> {
  final String password;
  final Map<ConfirmPasswordValidationError, String>? errorMessages;
  const ConfirmPasswordInput.pure({
    this.password = '',
    this.errorMessages,
  }) : super.pure('');
  const ConfirmPasswordInput.dirty({
    String value = '',
    this.password = '',
    this.errorMessages,
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

  String? get errorMessage {
    if (error == null) return null;
    if (errorMessages != null && errorMessages!.containsKey(error)) {
      return errorMessages![error];
    }
    switch (error!) {
      case ConfirmPasswordValidationError.empty:
        return 'يرجى تأكيد كلمة المرور';
      case ConfirmPasswordValidationError.mismatched:
        return 'كلمة المرور غير مطابقة';
    }
  }
}
