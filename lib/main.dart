import 'package:bloc_practice/bloc/counter_bloc/counter_bloc.dart';
import 'package:bloc_practice/bloc/fav_bloc/fav_blc_bloc.dart';
import 'package:bloc_practice/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_bloc.dart';
import 'package:bloc_practice/bloc/todo/todo_bloc.dart';
import 'package:bloc_practice/equatble_test.dart';
import 'package:bloc_practice/repository/favourite_repository.dart';
import 'package:bloc_practice/ui/counter/counter_screen.dart';
import 'package:bloc_practice/ui/fav/favurite.dart';
import 'package:bloc_practice/ui/image_picker/image_picker.dart';
import 'package:bloc_practice/ui/switch/switch_example.dart';
import 'package:bloc_practice/ui/todo/todo.dart';
import 'package:bloc_practice/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePickerUtils()),
        ),
        BlocProvider(
          create: (context) => TodoBloc(),
        ),
        BlocProvider(
          create: (context) => FavBlcBloc(FavouriteRepository()),
        ),
        
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true
        ),
        home:Favourite(),
      ),
    );
  }
}






