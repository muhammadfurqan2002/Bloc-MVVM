
import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable{

    const SwitchEvent();
  @override
  List<Object?> get props=>[];
}


class OnSwitch extends SwitchEvent{
  final bool isOn;
  const OnSwitch(this.isOn);
  @override
  List<Object?> get props=>[isOn];
}
class OffSwitch extends SwitchEvent{
  final bool isOff;
  const OffSwitch(this.isOff);
  @override
  List<Object?> get props=>[isOff];
}
class SliderEvent extends SwitchEvent{
  final double val;
  const SliderEvent(this.val);
  @override
  List<Object?> get props=>[val];
}