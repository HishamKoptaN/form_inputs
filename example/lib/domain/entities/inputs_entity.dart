import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inputs_entity.freezed.dart';

@freezed
abstract class InputsEntity with _$InputsEntity {
  const factory InputsEntity({
    LinkFormInput? link,
    GenericFormInput? name,
    GenericFormInput? description,
    EmailFormInput? email,
    UsernameFormInput? username,
    PasswordFormInput? password,
    ConfirmPasswordFormInput? confirmPassword,
    PhoneNumberFormInput? phoneNumber,
    GenericFormInput? dialCode,
    GenericFormInput? isoCode,
    BoolFormInput? isValidNumber,
    BoolFormInput? termsAccepted,
    bool? obscurePassword,
    bool? rememberMe,
  }) = _InputsEntity;
}
