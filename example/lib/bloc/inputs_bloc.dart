import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../domain/entities/inputs_entity.dart';
part 'inputs_bloc.freezed.dart';
part 'inputs_event.dart';
part 'inputs_state.dart';

@lazySingleton
class InputsBloc extends Bloc<InputsEvent, InputsState> {
  InputsBloc()
      : super(
          const InputsState.loaded(
            inputs: InputsEntity(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    on<InputsEvent>((event, emit) async {
      await event.when(
        dataChanged: (inputs) async {
          await state.mapOrNull(
            loaded: (state) {
              emitCustomLoaded(
                emit: emit,
                state: state.copyWith(inputs: inputs!),
              );
            },
          );
        },
      );
    });
  }

  void emitCustomLoaded({
    required Emitter<InputsState> emit,
    required _Loaded state,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      state.copyWith(
        formzSubmissionStatus:
            formzSubmissionStatus ?? _validateForm(inputs: state.inputs),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<InputsState> emit,
  }) {
    return emit(InputsState.failure(error: ''));
  }

  FormzSubmissionStatus _validateForm({required InputsEntity inputs}) {
    // Validate email domain
    String? emailValue = inputs.email?.value;
    bool isEmailDomainValid = emailValue != null &&
        (emailValue.endsWith('@gmail.com') ||
            emailValue.endsWith('@icloud.com'));
    String? passwordValue = inputs.password?.value;
    bool isPasswordStrong = false;
    if (passwordValue != null && passwordValue.isNotEmpty) {
      bool hasUppercase = passwordValue.contains(RegExp(r'[A-Z]'));
      bool hasLowercase = passwordValue.contains(RegExp(r'[a-z]'));
      bool hasSymbol = passwordValue.contains(
        RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
      );
      bool hasNumber = passwordValue.contains(RegExp(r'[0-9]'));
      bool isLongEnough = passwordValue.length >= 8;

      isPasswordStrong = hasUppercase &&
          hasLowercase &&
          hasSymbol &&
          hasNumber &&
          isLongEnough;
    }

    final formzValid = Formz.validate([
      inputs.name ?? const GenericFormzInput.pure(),
      inputs.email ?? const EmailInput.pure(),
      inputs.password ?? const PasswordInput.pure(),
      inputs.confirmPassword ?? const PasswordInput.pure(),
      ConfirmPasswordInput.dirty(
        value: inputs.confirmPassword?.value ?? '',
        password: inputs.password?.value ?? '',
      ),
    ]);

    return (formzValid &&
            inputs.isValidNumber?.value == true &&
            isEmailDomainValid &&
            isPasswordStrong)
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }
}
