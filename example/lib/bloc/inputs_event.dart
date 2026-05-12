part of 'inputs_bloc.dart';

@freezed
abstract class InputsEvent with _$InputsEvent {
  const factory InputsEvent.dataChanged({required InputsEntity inputs}) =
      _DataChanged;
}
