import 'package:formz/formz.dart';

/// أخطاء تأكيد كلمة المرور
enum ConfirmPasswordValidationError { empty, mismatch }

/// كلاس تأكيد كلمة المرور باستخدام Formz
class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationError> {
  final String password;

  /// الحالة الأولية
  const ConfirmPasswordInput.pure({this.password = ''}) : super.pure('');

  /// الحالة المحدثة
  const ConfirmPasswordInput.dirty({required this.password, String value = ''})
    : super.dirty(value);

  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (value.trim().isEmpty) return ConfirmPasswordValidationError.empty;
    if (value != password) return ConfirmPasswordValidationError.mismatch;
    return null;
  }
}

/// امتداد لرسائل الأخطاء
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
