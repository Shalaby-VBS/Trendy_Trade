import 'package:freezed_annotation/freezed_annotation.dart';

part 'toggle_state.freezed.dart';

@freezed
class ToggleState with _$ToggleState {
  const factory ToggleState.initial() = Initial;
  const factory ToggleState.toggledOn() = ToggledOn;
  const factory ToggleState.toggledOff() = ToggledOff;
}
