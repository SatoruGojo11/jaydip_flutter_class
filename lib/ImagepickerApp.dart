import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerApp extends StatefulWidget {
  const ImagePickerApp({Key? key}) : super(key: key);

  @override
  State<ImagePickerApp> createState() => _ImagePickerAppState();
}

class _ImagePickerAppState extends State<ImagePickerApp> {
  ImagePicker _imagePicker = ImagePicker();
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker App'),
      ),
      body: ListView(
        children: [
          ButtonBar(
            children: [
              IconButton(
                onPressed: () {
                  pickImageFromCamera();
                },
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.deepOrange,
                ),
              ),
              IconButton(
                onPressed: () {
                  pickImageFromGallery();
                },
                icon: Icon(
                  Icons.photo_camera_back,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          imageFile == null ? Placeholder() : Image.file(imageFile!),
        ],
      ),
    );
  }

  pickImageFromCamera() async {
    XFile? pickImage = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = File(pickImage!.path);
    });
  }

  pickImageFromGallery() async {
    XFile? pickImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(pickImage!.path);
    });
  }
}
