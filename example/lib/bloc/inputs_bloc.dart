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
                state: state.copyWith(inputs: inputs),
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
    return emit(const InputsState.failure(error: ''));
  }

  FormzSubmissionStatus _validateForm({required InputsEntity inputs}) {
    final formzValid = Formz.validate([
      inputs.link ?? const LinkInput.pure(),
      // GenericFormzInput.dirty(value: inputs.name?.value ?? ''),
      // inputs.email ?? const EmailInput.pure(),
      // inputs.password ?? const PasswordInput.pure(),
      // inputs.confirmPassword ?? const ConfirmPasswordInput.pure(),
      // ConfirmPasswordInput.dirty(
      //   value: inputs.confirmPassword?.value ?? '',
      //   password: inputs.password?.value ?? '',
      // ),
    ]);
    return (formzValid)
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }
}
