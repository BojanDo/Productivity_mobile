
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends StatefulWidget {
  const ImagePickerBloc({super.key, required this.inputFieldBloc});

  final InputFieldBloc<File?,dynamic> inputFieldBloc;

  @override
  State<ImagePickerBloc> createState() => _ImagePickerBlocState();
}

class _ImagePickerBlocState extends State<ImagePickerBloc> {
  File? _croppedImage;

  Future<void> pickAndCropImage() async {
    // Pick an image
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Crop the image
      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1), // Square mask
        uiSettings: <PlatformUiSettings>[
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            lockAspectRatio: true,
          ),
        ],
      );
      if (croppedFile != null) {
        setState(() {
          _croppedImage = File(croppedFile.path);
        });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
