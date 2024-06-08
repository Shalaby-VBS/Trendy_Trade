import 'package:flutter_bloc/flutter_bloc.dart';
import 'toggle_state.dart';

class ToggleCubit extends Cubit<ToggleState> {
  ToggleCubit() : super(const ToggleState.initial());

  void toggle() {
    state.maybeWhen(
      toggledOn: () => emit(const ToggleState.toggledOff()),
      orElse: () => emit(const ToggleState.toggledOn()),
    );
  }
}
