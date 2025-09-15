import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/todo/todo_event.dart';
import 'package:bloc_practice/bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> list=[];
  TodoBloc() : super(TodoState()) {
    on<AddEvent>(_addEvent);
    on<DeleteEvent>(_delEvent);
  }
  void _addEvent(AddEvent event,Emitter<TodoState> emit){
    list.add(event.item);
    emit.call(state.copyWith(list: List.from(list)));
  }
  void _delEvent(DeleteEvent event,Emitter<TodoState> emit){
    list.removeAt(event.index);
    emit.call(state.copyWith(list: List.from(list)));
  }
}
