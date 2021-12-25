// ignore_for_file: file_names
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

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

  var image;
  final Picker = ImagePicker();
  getImage(ImageSource sre) async {
    final Pac = await Picker.getImage(source: sre);
    setState(() {
      if (Pac != null) {
        image = File(Pac.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.teal,
        ),
        child: Card(
          margin: const EdgeInsets.fromLTRB(10, 15, 10, 90),
          elevation: 55,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
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
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 550,
                    shape: const StadiumBorder(side: BorderSide()),
                    fixedSize: const Size(340, 30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Select an image ",
                        style: TextStyle(color: Colors.teal),
                      ),
                    ],
                  ),
                  onPressed: () {
                    var e = AlertDialog(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      title: const Text("Choose picture from ?"),
                      content: Container(
                        height: 150,
                        child: Column(
                          children: [
                            const Divider(color: Colors.black),
                            Container(
                              color: Colors.teal,
                              child: ListTile(
                                leading: const Icon(Icons.image),
                                title: const Text("Galllery"),
                                onTap: () => getImage(ImageSource.gallery),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.teal,
                              child: ListTile(
                                leading: const Icon(Icons.add_a_photo),
                                title: const Text("Camera"),
                                onTap: () => getImage(ImageSource.camera),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    showDialog(context: context, builder: (context) => e);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 350,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(image),
              ),
            );
          },
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            'Save',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.teal),
          ),
          backgroundColor: Colors.white,
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




// ignore_for_file: file_names
/*import 'dart:io';

//import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
/*
  var image;
  final Picker = ImagePicker();
  getImage(ImageSource sre) async {
    final Pac = await Picker.getImage(source: sre);
    setState(() {
      if (Pac != null) {
        image = File(Pac.path);
      }
    });
  }
*/
  ImagePicker picker = ImagePicker();

  XFile? image;
//image = await picker.pickImage(source: ImageSource.gallery);
//XFile? image1 = await picker.pickImage(source: ImageSource.camera);
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageFromGalleryEx(
                          ImageSource.camera,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Select an image ",
                    style: TextStyle(),
                  ),
                ),
                //onPressed: () {},
                /*var e = AlertDialog(
                      title: Text("Choose picture from ?"),
                      content: Container(
                        height: 150,
                        child: Column(
                          children: [
                            Divider(color: Colors.black),
                            Container(
                              color: Colors.tealAccent,
                              child: ListTile(
                                leading: Icon(Icons.image),
                                title: Text("Galllery"),
                                onTap: () => getImage(ImageSource.gallery),
                              ),
                            ),
                            Container(
                              color: Colors.tealAccent,
                              child: ListTile(
                                leading: Icon(Icons.add_a_photo),
                                title: Text("Camera"),
                                onTap: () => getImage(ImageSource.camera),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    showDialog(context: context, builder: (context) => e);
                  },*/
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
