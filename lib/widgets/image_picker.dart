import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerFieldBlocBuilder extends StatelessWidget {
  const ImagePickerFieldBlocBuilder({
    super.key,
    required this.fileFieldBloc,
    this.label,
    this.errorBuilder,
    this.isEnabled = true,
    this.padding,
    this.decoration,
    this.onChanged,
  });

  final InputFieldBloc<File?, dynamic> fileFieldBloc;
  final String? label;
  final FieldBlocErrorBuilder? errorBuilder;
  final bool isEnabled;
  final EdgeInsetsGeometry? padding;
  final InputDecoration? decoration;
  final ValueChanged<File?>? onChanged;

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    // Show a dialog or bottom sheet for source selection
    final ImageSource? source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a picture'),
              onTap: () => Navigator.pop(context, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from gallery'),
              onTap: () => Navigator.pop(context, ImageSource.gallery),
            ),
          ],
        ),
      ),
    );

    if (source != null) {
      final XFile? pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        final CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: pickedFile.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          uiSettings: <PlatformUiSettings>[
            AndroidUiSettings(
              toolbarTitle: 'Crop Image',
              toolbarColor: Colors.blue,
              toolbarWidgetColor: Colors.white,
              lockAspectRatio: true,
            ),
            IOSUiSettings(
              title: 'Crop Image',
            ),
          ],
        );

        if (croppedFile != null) {
          final File croppedFileObject = File(croppedFile.path);
          fileFieldBloc.updateValue(croppedFileObject);
          if (onChanged != null) {
            onChanged!(croppedFileObject);
          }
        }
      }
    }
  }

  void _resetToInitialValue() {
    fileFieldBloc.updateValue(fileFieldBloc.state.initialValue);
    if (onChanged != null) {
      onChanged!(fileFieldBloc.state.initialValue);
    }
  }

  void _deleteImage() {
    fileFieldBloc.updateValue(null);
    if (onChanged != null) {
      onChanged!(null);
    }
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<InputFieldBloc<File?, dynamic>, InputFieldBlocState<File?, dynamic>>(
    bloc: fileFieldBloc,
    builder: (BuildContext context, InputFieldBlocState<File?, dynamic> state) {
      final InputDecoration effectiveDecoration = decoration ??
          InputDecoration(
            labelText: label,
            border: InputBorder.none,
          );

      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Label
            if (effectiveDecoration.labelText != null)
              Text(
                effectiveDecoration.labelText!,
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 8),
            // Image Upload Area
            GestureDetector(
              onTap: isEnabled ? () => _pickImage(context) : null,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: state.value == null ? Colors.grey[200] : null,
                  ),
                  child: state.value == null
                      ? const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add, size: 40, color: Colors.grey),
                        Text(
                          'Tap to add image',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      state.value!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // Reset and Delete Buttons
            if (isEnabled)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: _resetToInitialValue,
                    icon: const Icon(Icons.restart_alt, color: Colors.blue),
                    label: const Text('Reset', style: TextStyle(color: Colors.blue)),
                  ),
                  TextButton.icon(
                    onPressed: _deleteImage,
                    icon: const Icon(Icons.delete, color: Colors.red),
                    label: const Text('Delete', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
          ],
        ),
      );
    },
  );
}
