import 'package:formz/formz.dart';

enum UsernameValidationError { empty, short, long, invalidFormat }

class UsernameInput extends FormzInput<String, UsernameValidationError> {
  const UsernameInput.pure() : super.pure('');
  const UsernameInput.dirty([super.value = '']) : super.dirty();
  static final RegExp _usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
  String? get errorMessage {
    return switch (error) {
      null => null,
      UsernameValidationError.empty => 'يرجى إدخال اسم المستخدم',
      UsernameValidationError.short => 'اسم المستخدم قصير جداً (أقل من 3 حروف)',
      UsernameValidationError.long =>
        'اسم المستخدم طويل جداً (أكثر من 30 حرفاً)',
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
    if (trimmed.length < 3) {
      return UsernameValidationError.short;
    }
    if (trimmed.length > 30) {
      return UsernameValidationError.long;
    }
    if (!_usernameRegex.hasMatch(trimmed)) {
      return UsernameValidationError.invalidFormat;
    }

    return null;
  }
}
