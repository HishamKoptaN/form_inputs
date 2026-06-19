import 'dart:io';
import 'package:formz/formz.dart';

enum FileValidationError { empty, invalid, custom }

class FileFormInput extends FormzInput<File?, FileValidationError> {
  final String? Function(File?)? customValidator;

  const FileFormInput.pure({this.customValidator}) : super.pure(null);
  const FileFormInput.dirty(super.value, {this.customValidator})
      : super.dirty();

  @override
  FileValidationError? validator(File? value) {
    if (value == null || !value.existsSync()) {
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
