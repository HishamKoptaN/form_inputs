import 'package:formz/formz.dart';

enum BoolValidationError {
  empty,
  mustBeTrue,
}

class BoolFormzInput extends FormzInput<bool, BoolValidationError> {
  const BoolFormzInput.pure() : super.pure(false);
  const BoolFormzInput.dirty([super.value = false]) : super.dirty();

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
