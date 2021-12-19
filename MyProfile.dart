// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("build/assets/M.jpg"),
                ),
                SizedBox(height: 120),
                Container(
                  alignment: Alignment(0, -5),
                  child: ClipOval(
                    child: Image.asset(
                      "build/assets/ME.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "\n\n(Abu Kasem) أحمد الفريحان",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'while(true)\n       {   \n\n       }\n',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.5),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[800],
                          elevation: 0,
                          fixedSize: const Size(250, 25),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.person_add,
                              size: 25,
                            ),
                            Text(
                              " Add Friend",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Tab(
                              height: 25,
                              iconMargin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              icon: Container(
                                child: const Image(
                                  image: AssetImage('build/assets/I.png'),
                                  fit: BoxFit.cover,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.more_horiz,
                              size: 25,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      newMethod(
                          " Studies ITE at جامعة دمشق Damascus \n University",
                          Icons.school),
                      newMethod(
                          " Studied ITE at Aleppo of University", Icons.school),
                      newMethod("Went to  ثانوية جاسم الرسمية ", Icons.school),
                      newMethod("Went to  ثانوية نوى الخاصة ", Icons.school),
                      newMethod("Went to  ثانوية نوى الخاصة ", Icons.school),
                      newMethod("Went to  ثانوية نوى الخاصة ", Icons.school),
                      newMethod("Went to  ثانوية نوى الخاصة ", Icons.school),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row newMethod(String s, IconData e) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Icon(
          e,
          size: 25,
          color: Colors.black,
        ),
        MaterialButton(
          onPressed: () {},
          child: Text(
            s,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
