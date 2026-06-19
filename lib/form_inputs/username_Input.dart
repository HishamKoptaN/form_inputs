import 'package:formz/formz.dart';

enum UsernameValidationError { empty, short, long, invalidFormat }

class UsernameInput extends FormzInput<String, UsernameValidationError> {
  final int min;
  final int max;
  const UsernameInput.pure({this.min = 8, this.max = 25}) : super.pure('');
  const UsernameInput.dirty([super.value = '', this.min = 8, this.max = 25])
      : super.dirty();
  static final RegExp _usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
  String? get errorMessage {
    return switch (error) {
      null => null,
      UsernameValidationError.empty => 'يرجى إدخال اسم المستخدم',
      UsernameValidationError.short =>
        'اسم المستخدم قصير جداً (أقل من $min أحرف)',
      UsernameValidationError.long =>
        'اسم المستخدم طويل جداً (أكثر من $max حرفاً)',
      UsernameValidationError.invalidFormat =>
        'يسمح فقط بالحروف الإنجليزية، الأرقام، والشرطة السفلية (_)',
    };
  }

  @override
  UsernameValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return UsernameValidationError.empty;
    }
    if (trimmed.length < min) {
      return UsernameValidationError.short;
    }
    if (trimmed.length > max) {
      return UsernameValidationError.long;
    }
    if (!_usernameRegex.hasMatch(trimmed)) {
      return UsernameValidationError.invalidFormat;
    }

    return null;
  }
}
