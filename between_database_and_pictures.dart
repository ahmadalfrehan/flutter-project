import 'package:flutter/material.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

import 'Splash_scraan.dart';
import 'package:marquee/marquee.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'doggie_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    version: 1,
  );
  Future<void> insertDog(Dog dog) async {
    final db = await database;
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  var fido = Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );
  await insertDog(fido);
  // Update Fido's age and save it to the database.
  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 7,
  );
  await updateDog(fido);
  print(await dogs()); // Prints Fido with age 42.
}

Future<List<Dog>> dogs() async {
  // Query the table for all The Dogs.
  final database =
      openDatabase(join(await getDatabasesPath(), 'doggie_database.db'));

  final db = await database;

  final List<Map<String, dynamic>> maps = await db.query('dogs');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return Dog(
      id: maps[i]['id'],
      name: maps[i]['name'],
      age: maps[i]['age'],
    );
  });
}

Future<void> updateDog(Dog dog) async {
  final database =
      openDatabase(join(await getDatabasesPath(), 'doggie_database.db'));

  final db = await database;
  await db.update(
    'dogs',
    dog.toMap(),
    // Ensure that the Dog has a matching id.
    where: 'id = ?',
    // Pass the Dog's id as a whereArg to prevent SQL injection.
    whereArgs: [dog.id],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    setDate();
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HOME PAGE',
      style: optionStyle,
    ),
    Text(
      'COURSE PAGE',
      style: optionStyle,
    ),
  ];

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

  List<Asset> images = <Asset>[];
  Future io() async {
    List<Asset> Leab = <Asset>[];
    try {
      Leab = await MultiImagePicker.pickImages(
        maxImages: 30,
        enableCamera: true,
        selectedAssets: images,
      );
      setState(() {
        Leab = images;
      });
    } catch (e) {
      print(e);
    }
  }

  // A method that retrieves all the dogs from the dogs table.

  final li = List<String>.generate(45, (index) => "itemCount${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ahmadfrehan"),
        actions: [
          FlatButton(
            onPressed: io,
            child: Text(" Pick images "),
          ),
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            var e = AlertDialog(
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
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text('add Patients'),
          ),
        ],
      ),
    );
  }

  SizedBox newMethod() {
    return SizedBox(
      height: 95,
      child: Card(
        color: Colors.teal,
        child: Marquee(text: " AhmadAlfrehan "),
      ),
    );
  }

  setDate() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    setState(() {
      p.setString("name", "Ahmadfrehan");
      p.setInt("age", 150);
      p.setInt("height", 250);
      p.setString("Education", "DU IT");
      p.setString("crush", "+34");
    });
  }
}

class Dog {
  final int id;
  final String name;
  final int age;

  Dog({
    required this.id,
    required this.name,
    required this.age,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{id: $id, name: $name, age: $age}';
  }
}
