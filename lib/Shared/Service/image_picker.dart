import 'package:image_picker/image_picker.dart';

class ImagesPicker {
  static late ImagePicker picker;
  static late String imagePicked;
  static getInstance() {
    picker = ImagePicker();
  }

  getGalleryImage() async {
    return await picker.pickImage(source: ImageSource.gallery).then((v) => imagePicked = v!.path);
  }

  getCameraImage() async {
    return await picker.pickImage(source: ImageSource.camera).then((v) => imagePicked = v!.path);
  }
}
