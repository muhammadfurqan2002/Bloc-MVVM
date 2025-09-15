import 'dart:io';

import 'package:bloc_practice/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_practice/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_practice/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Picker Bloc"),
      ),
      body: BlocBuilder<ImagePickerBloc,ImagePickerState>(builder: (context,state){
        return  state.file==null?InkWell(
            onTap: (){
              context.read<ImagePickerBloc>().add(PickImageGalleryEvent());
            },
            child: Center(child: CircleAvatar(child: Icon(Icons.image),))):
            Center(child: Image.file(File(state.file!.path.toString())));

      }),
    );
  }
}
