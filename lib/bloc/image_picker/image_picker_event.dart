
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImagePickerEvent extends Equatable{
  const ImagePickerEvent();
 @override
  List<Object?> get props => [];
}


class PickImageGalleryEvent extends ImagePickerEvent{}
class PickImageCameraEvent extends ImagePickerEvent{}