import 'package:formz/formz.dart';

enum BoolValidationError {
  empty,
  mustBeTrue,
}

class BoolFormInput extends FormzInput<bool, BoolValidationError> {
  const BoolFormInput.pure() : super.pure(false);
  const BoolFormInput.dirty([super.value = false]) : super.dirty();

  @override
  BoolValidationError? validator(bool value) {
    if (value == false) {
      return BoolValidationError.mustBeTrue;
    }
    return null;
  }

  String? get errorMessage {
    return switch (error) {
      BoolValidationError.empty => 'مطلوب',
      BoolValidationError.mustBeTrue => 'مطلوب',
      _ => null,
    };
  }
}
