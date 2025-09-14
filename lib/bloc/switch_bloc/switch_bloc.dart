import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_event.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<OnSwitch>(_onSwitch);
    on<OffSwitch>(_ofSwitch);
    on<SliderEvent>(_slide);
  }

  void _onSwitch(OnSwitch event,Emitter<SwitchState> emit){
    emit.call(state.copyWith(switcher: event.isOn));
  }
  void _ofSwitch(OffSwitch event,Emitter<SwitchState> emit){
    emit.call(state.copyWith(switcher: event.isOff));
  }
  void _slide(SliderEvent event,Emitter<SwitchState> emit){
    emit.call(state.copyWith(slider: event.val));
  }
}
