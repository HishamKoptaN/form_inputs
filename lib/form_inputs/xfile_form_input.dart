import 'package:formz/formz.dart';
import 'package:cross_file/cross_file.dart';
enum XFileValidationError { empty, invalid, custom }

class XFileFormInput extends FormzInput<XFile?, XFileValidationError> {
  final String? Function(XFile?)? customValidator;

  const XFileFormInput.pure({this.customValidator}) : super.pure(null);
  const XFileFormInput.dirty(super.value, {this.customValidator})
      : super.dirty();

  @override
  XFileValidationError? validator(XFile? value) {
    if (value == null) {
      return XFileValidationError.empty;
    }

    final customResult = customValidator?.call(value);
    if (customResult != null) {
      return XFileValidationError.custom;
    }

    return null;
  }
  String? get errorMessage {
    return switch (error) {
      XFileValidationError.empty => 'الملف مطلوب',
      XFileValidationError.custom => customValidator?.call(value),
      _ => null,
    };
  }
}
