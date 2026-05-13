import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inputs_entity.freezed.dart';

@freezed
abstract class InputsEntity with _$InputsEntity {
  const factory InputsEntity({
    GenericFormzInput? name,
    GenericFormzInput? description,
    EmailInput? email,
    PasswordInput? password,
    ConfirmPasswordInput? confirmPassword,
    PhoneNumberInput? phoneNumber,
    GenericFormzInput? dialCode,
    GenericFormzInput? isoCode,
    BoolFormzInput? isValidNumber,
    BoolFormzInput? termsAccepted,
    bool? obscurePassword,
    bool? rememberMe,
  }) = _InputsEntity;
}
