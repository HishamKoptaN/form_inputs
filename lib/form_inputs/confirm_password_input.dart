import 'package:formz/formz.dart';
/// أخطاء تأكيد كلمة المرور
enum ConfirmPasswordValidationError {
  empty,
  mismatch,
}
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
    if (value.isEmpty) return ConfirmPasswordValidationError.empty;
    if (value != password) return ConfirmPasswordValidationError.mismatch;
    return null;
  }

  /// الرسائل الخاصة بالأخطاء
  String? get errorMessage {
    switch (error) {
      case ConfirmPasswordValidationError.empty:
        return 'يرجى تأكيد كلمة المرور';
      case ConfirmPasswordValidationError.mismatch:
        return 'كلمة المرور غير متطابقة';
      default:
        return null;
    }
  }
}
