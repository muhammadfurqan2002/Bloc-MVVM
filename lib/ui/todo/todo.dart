import 'package:bloc_practice/bloc/todo/todo_bloc.dart';
import 'package:bloc_practice/bloc/todo/todo_event.dart';
import 'package:bloc_practice/bloc/todo/todo_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc,TodoState>(builder: (context,state){
        return ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (context,index){
              final item=state.list[index];
            return ListTile(
              title: Text(item.toString()),
              trailing:InkWell(child: Icon(Icons.delete),onTap: (){
                context.read<TodoBloc>().add(DeleteEvent(index));

              },),
            );
        });
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
       context.read<TodoBloc>().add(AddEvent("furqan"));

      },
      child: Icon(Icons.add),
      ),
    );
  }
}
