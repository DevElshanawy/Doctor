import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextRecognitionPage extends StatefulWidget {
  const TextRecognitionPage({super.key});

  @override
  State<TextRecognitionPage> createState() => _TextRecognitionPageState();
}

class _TextRecognitionPageState extends State<TextRecognitionPage> {
  File? _image;
  String text = '';
  Future _piclImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      setState(() {
        _image = File(image.path);
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future textRecognition(File img) async {
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final inputImage = InputImage.fromFilePath(img.path);
    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);
    setState(() {
      text = recognizedText.text;
    });
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(
          'text Recognition',
        )),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.grey,
              child: Center(
                child: _image == null
                    ? const Icon(
                        Icons.add_a_photo,
                        size: 60,
                      )
                    : Image.file(_image!),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  _piclImage(ImageSource.camera).then((value) {
                        if (_image != null) {textRecognition(_image!);}
                      });
                },
                child: const Text(
                  'التقط صوره من الكاميره',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  _piclImage(ImageSource.gallery).then((value)  {
                        if (_image != null) {textRecognition(_image!);}
                      });
                },
                child: const Text(
                  '  اختر صوره من المعرض ',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SelectableText(
              text,
              style: const TextStyle(
                
                fontSize: 18,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
