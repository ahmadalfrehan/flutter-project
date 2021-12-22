// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("build/assets/M.jpg"),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: (size.width * 0.32) - 1,
                      left: (size.width * 0.28) - 10),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      const Divider(
                        indent: 12,
                        endIndent: 12,
                        color: Colors.black26,
                      ),
                      const SizedBox(height: 12),
                      Detalis(
                          " Studies ITE at جامعة دمشق Damascus \n University",
                          Icons.school),
                      Detalis(
                          " Studied ITE at Aleppo of University", Icons.school),
                      //Detalis("Went toثانوية جاسم الرسمية ", Icons.school),
                      //Detalis("Went toثانوية نوى الخاصة ", Icons.school),
                      Detalis("Lives in Dar`a", Icons.home_work_rounded),
                      Detalis("From Dar`a", Icons.fmd_good_sharp),
                      Detalis("Single", Icons.favorite),
                      Detalis("Joined July 2015", Icons.access_time_filled),
                      Detalis("Followed by 158 people", Icons.subscriptions),
                      Detalis("t.me/Ahmad_ALFrehan", Icons.link),
                      Detalis("codeforces.com/profile/AhmadFrehan", Icons.link),
                      Detalis("Seeأحمد's About Info", Icons.more_horiz),
                      const Divider(
                        color: Colors.black26,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Friends",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 12,
                        // color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        thickness: 12,
                      ),
                      Post(
                        ' updated his cover photo.',
                        '  Nov 19 .',
                        "ماكنت حابب اصرعكم بالصورة بس ماقدرت عدل ع\n 💔🙂😂🌚🚶‍♀️🚶‍♀️ الخصوصية لانها غلاف  ",
                        "build/assets/M.jpg",
                      ),
                      Post(
                        '',
                        '  Nov 20 .',
                        "",
                        "build/assets/A.png",
                      ),
                      Post(
                        '',
                        '  Nov 20 .',
                        "",
                        "build/assets/B.jpg",
                      ),
                      Post(
                        '',
                        '  Nov 20 .',
                        "",
                        "build/assets/q1.jpg",
                      ),
                      Post(
                        '',
                        '  Nov 20 .',
                        "",
                        "build/assets/q3.jpg",
                      ),
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

  Card Post(String s2, String s3, String s4, String s5) {
    return Card(
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Image.asset(
                  "build/assets/ME.jpg",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              const Text(
                '  أحمد الفريحان',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                s2,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 60,
              ),
              Text(
                s3,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 120,
              ),
              Text(
                s4,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.zero,
            child: Image.asset(s5),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Image.asset(
                  "build/assets/H.png",
                  fit: BoxFit.cover,
                  height: 15,
                  width: 15,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  "build/assets/LO.png",
                  fit: BoxFit.cover,
                  height: 15,
                  width: 15,
                ),
              ),
              const SizedBox(
                width: 255,
              ),
              Text('17 Comments'),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          Divider(
            indent: 12,
            endIndent: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    Text(' Like'),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children:[
                    Icon(Icons.messenger_outline),
                    Text(' Comment'),
                  ],
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.shortcut_sharp),
                    Text(' Share'),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 12,
          ),
        ],
      ),
    );
  }

  Row Detalis(String s, IconData e) {
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
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
