import 'package:formz/formz.dart';

enum GenericCheckboxValidationError { notChecked }

class GenericCheckboxFormInput
    extends FormzInput<bool, GenericCheckboxValidationError> {
  const GenericCheckboxFormInput.pure() : super.pure(false);
  const GenericCheckboxFormInput.dirty([bool value = false]) : super.dirty(value);

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
