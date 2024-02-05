import 'dart:io';

import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:image_picker/image_picker.dart';

class AmountScreenController with ChangeNotifier {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController amountRateCtrl = TextEditingController();
  HtmlEditorController htmlController = HtmlEditorController();

  List<File> fileList = [];
  final ImagePicker picker = ImagePicker();
  String imgUrl = "";

  String videoUrl = "";

  Future<void> pickImageFromGallery(BuildContext context) async {
    try {
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );
      if (pickedFile != null) {
        imgUrl = pickedFile.path;

        fileList.add(File(imgUrl));
        notifyListeners();
      }
    } catch (e) {
      // Handle exceptions if needed
    }
  }

  Future<void> pickImageFromCamera(BuildContext context) async {
    try {
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 50,
      );
      if (pickedFile != null) {
        imgUrl = pickedFile.path;
        // ignore: use_build_context_synchronously

        notifyListeners(); // Notify listeners to update the UI
      }
    } catch (e) {
      // Handle exceptions if needed
    }
  }

  onAddAmountInit() {
    nameCtrl.clear();
    amountRateCtrl.clear();
    imgUrl = "";
    videoUrl = "";
  }
}
