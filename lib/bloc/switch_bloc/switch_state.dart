
import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool switcher;
  final double slider;
  const SwitchState({
     this.switcher=false,
    this.slider=.5
  });

  SwitchState copyWith({bool? switcher,double? slider}){
    return SwitchState(
        switcher:switcher??this.switcher,
      slider: slider??this.slider
    ) ;
  }
  @override
  // TODO: implement props
  List<Object?> get props => [switcher,slider];

}
