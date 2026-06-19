import 'package:form_inputs/form_inputs.dart';
import 'package:form_inputs/form_inputs/username_Input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inputs_entity.freezed.dart';

@freezed
abstract class InputsEntity with _$InputsEntity {
  const factory InputsEntity({
    LinkInput? link,
    GenericInput? name,
    GenericInput? description,
    EmailInput? email,
    UsernameInput? username,
    PasswordInput? password,
    ConfirmPasswordInput? confirmPassword,
    PhoneNumberInput? phoneNumber,
    GenericInput? dialCode,
    GenericInput? isoCode,
    BoolFormzInput? isValidNumber,
    BoolFormzInput? termsAccepted,
    bool? obscurePassword,
    bool? rememberMe,
  }) = _InputsEntity;
}
