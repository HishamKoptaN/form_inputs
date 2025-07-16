import 'package:formz/formz.dart';

/// الأخطاء الممكنة لأي checkbox
enum GenericCheckboxValidationError { notChecked }
/// كلاس قابل لإعادة الاستخدام لأي checkbox يحتاج تحقق
class GenericCheckboxInput
    extends FormzInput<bool, GenericCheckboxValidationError> {
  const GenericCheckboxInput.pure() : super.pure(false);
  const GenericCheckboxInput.dirty([bool value = false]) : super.dirty(value);

  @override
  GenericCheckboxValidationError? validator(bool value) {
    return value ? null : GenericCheckboxValidationError.notChecked;
  }
}

extension GenericCheckboxValidationErrorX on GenericCheckboxValidationError {
  String get message {
    switch (this) {
      case GenericCheckboxValidationError.notChecked:
        return 'يجب الموافقة للاستمرار';
    }
  }
}
