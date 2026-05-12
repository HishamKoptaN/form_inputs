import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inputs_entity.freezed.dart';

@freezed
abstract class InputsEntity with _$InputsEntity {
  const factory InputsEntity({
    GenericFormzInput? name,
    EmailInput? email,
    PasswordInput? password,
    PasswordInput? confirmPassword,
    GenericFormzInput? phoneNumber,
    GenericFormzInput? dialCode,
    GenericFormzInput? isoCode,
    GenericFormzInput? isValidNumber,
    GenericFormzInput? termsAccepted,
    bool? obscurePassword,
    bool? rememberMe,
  }) = _InputsEntity;
}
