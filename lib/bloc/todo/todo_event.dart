import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable{
  const TodoEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class AddEvent extends TodoEvent{
  final String item;
  const AddEvent(this.item);
  List<Object?> get props => [item];
}
class DeleteEvent extends TodoEvent{
  final int index;
  const DeleteEvent(this.index);
  List<Object?> get props => [index];
}