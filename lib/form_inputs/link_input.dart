import 'package:formz/formz.dart';

enum LinkValidationError { empty, invalid }

class LinkInput extends FormzInput<String, LinkValidationError> {
  const LinkInput.pure({
    String value = '',
    String? emptyMessage,
    String? invalidMessage,
  }) : super.pure(value);
  const LinkInput.dirty({
    required String value,
    String? emptyMessage,
    String? invalidMessage,
  }) : super.dirty(value);
  static final RegExp _linkRegex = RegExp(
    r'^(https?:\/\/)?([\w\d\-]+\.)+[\w\d\-]+(\/[\w\d\-\.\?#]*)*$',
    caseSensitive: false,
  );
  @override
  LinkValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return LinkValidationError.empty;
    if (!_linkRegex.hasMatch(trimmed)) return LinkValidationError.invalid;
    return null;
  }
}

extension LinkValidationErrorX on LinkValidationError {
  String get message {
    return switch (this) {
      LinkValidationError.empty => 'يرجى إدخال الرابط',
      LinkValidationError.invalid =>
        'صيغة الرابط غير صحيحة، يرجى التأكد من بدايته بـ http أو https',
    };
  }
}
