part of 'inputs_bloc.dart';

@freezed
abstract class InputsState with _$InputsState {
  const factory InputsState.initial() = _Initial;
  const factory InputsState.loading() = _Loading;
  const factory InputsState.success() = _Success;
  const factory InputsState.loaded({
    required InputsEntity inputs,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory InputsState.failure({required String error}) = _Failure;
}
