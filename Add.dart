// ignore_for_file: file_names
import 'dart:io';

//import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

enum ImageSourceType { gallery, camera }

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  var nameController = TextEditingController();
  var endController = TextEditingController();
  var CategoryController = TextEditingController();
  var InformationController = TextEditingController();
  var modController = TextEditingController();
  var priceController = TextEditingController();
  /*ImagePicker picker = ImagePicker();

//XFile? image;
//image = await picker.pickImage(source: ImageSource.gallery);
//XFile? image1 = await picker.pickImage(source: ImageSource.camera);
  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.teal,
        ),
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 55,
          shape: Border.all(
            width: 3,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(
              children: [
                const Text('Add product',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                newMethod("Name", nameController),
                newMethod("date of end ", endController),
                newMethod("Category", CategoryController),
                newMethod("Communication Info", InformationController),
                newMethod("Quantity available from the product", modController),
                newMethod("Price", priceController),
                ElevatedButton(
                  onPressed: () {
                    //    _handleURLButtonPress(context, ImageSourceType.gallery);
                  },
                  child: const Text(
                    "Select an image ",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding newMethod(String s, var x) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            labelText: s),
        controller: x,
        keyboardType: TextInputType.text,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
/*
class ImageFromGalleryEx extends StatefulWidget {
  final type;
  ImageFromGalleryEx(this.type);

  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;

  ImageFromGalleryExState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(type == ImageSourceType.camera
              ? "Image from Camera"
              : "Image from Gallery")),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 52,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                var source = type == ImageSourceType.camera
                    ? ImageSource.camera
                    : ImageSource.gallery;
                XFile image = await imagePicker.pickImage(
                    source: source,
                    imageQuality: 50,
                    preferredCameraDevice: CameraDevice.front);
                setState(() {
                  _image = File(image.path);
                });
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.red[200]),
                child: _image != null
                    ? Image.file(
                        _image,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fitHeight,
                      )
                    : Container(
                        decoration: BoxDecoration(color: Colors.red[200]),
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/