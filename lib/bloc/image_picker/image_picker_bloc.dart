import 'package:bloc/bloc.dart';
import 'package:bloc_practice/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker_event.dart';
import 'image_picker_state.dart';


class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerState()) {
    on<PickImageGalleryEvent>(_galleryPick);
  }
  void _galleryPick(PickImageGalleryEvent event,Emitter<ImagePickerState> emit)async{
    XFile? file=await imagePickerUtils.galleryCapture();
    emit.call(state.copyWith(file:file));
  }
}
