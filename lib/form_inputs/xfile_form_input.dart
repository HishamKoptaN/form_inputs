import 'package:formz/formz.dart';
import 'package:cross_file/cross_file.dart';

enum FileValidationError { empty, invalid, custom }

class FileFormInput extends FormzInput<XFile?, FileValidationError> {
  final String? Function(XFile?)? customValidator;

  const FileFormInput.pure({this.customValidator}) : super.pure(null);
  const FileFormInput.dirty(super.value, {this.customValidator})
      : super.dirty();

  @override
  FileValidationError? validator(XFile? value) {
    if (value == null) {
      return FileValidationError.empty;
    }

    final customResult = customValidator?.call(value);
    if (customResult != null) {
      return FileValidationError.custom;
    }

    return null;
  }

  String? get errorMessage {
    return switch (error) {
      FileValidationError.empty => 'الملف مطلوب',
      FileValidationError.custom => customValidator?.call(value),
      _ => null,
    };
  }
}
