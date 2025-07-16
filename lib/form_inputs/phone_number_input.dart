import 'package:formz/formz.dart';

/// أنواع الأخطاء الممكنة لرقم الهاتف
enum PhoneNumberValidationError {
  empty,
  invalid,
}
/// كلاس للتحقق من رقم الهاتف باستخدام Formz
class PhoneNumberInput extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumberInput.pure() : super.pure('');
  const PhoneNumberInput.dirty([super.value = '']) : super.dirty();
  // يقبل فقط أرقام من 6 إلى 15 رقمًا بدون +
  static final RegExp _phoneRegExp = RegExp(r'^[0-9]{6,15}$');
  @override
  PhoneNumberValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return PhoneNumberValidationError.empty;
    if (!_phoneRegExp.hasMatch(trimmed)) {
      return PhoneNumberValidationError.invalid;
    }
    return null;
  }
}
/// رسائل الخطأ الخاصة برقم الهاتف
extension PhoneNumberValidationErrorX on PhoneNumberValidationError {
  String get message {
    return switch (this) {
      PhoneNumberValidationError.empty => 'يرجى إدخال رقم الهاتف',
      PhoneNumberValidationError.invalid =>
        'رقم الهاتف غير صالح (مثلاً: 201234)',
    };
  }
}
