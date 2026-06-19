import 'package:formz/formz.dart';

enum ListValidationError {
  empty,
  tooFew,
  tooMany,
}

class ListFormInput<T> extends FormzInput<List<T>, ListValidationError> {
  final int? minLength;
  final int? maxLength;

  const ListFormInput.pure({
    this.minLength,
    this.maxLength,
  }) : super.pure(const []);

  const ListFormInput.dirty(
    super.value, {
    this.minLength,
    this.maxLength,
  }) : super.dirty();

  @override
  ListValidationError? validator(List<T> value) {
    if (value.isEmpty) {
      return ListValidationError.empty;
    }

    if (minLength != null && value.length < minLength!) {
      return ListValidationError.tooFew;
    }

    if (maxLength != null && value.length > maxLength!) {
      return ListValidationError.tooMany;
    }

    return null;
  }

  String? get errorMessage {
    return switch (error) {
      ListValidationError.empty => 'يجب اختيار عنصر واحد على الأقل',
      ListValidationError.tooFew => 'عدد العناصر أقل من المطلوب',
      ListValidationError.tooMany => 'عدد العناصر أكثر من المسموح',
      _ => null,
    };
  }
}
