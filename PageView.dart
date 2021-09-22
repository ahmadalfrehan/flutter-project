import 'package:ahmad_alfrehan/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PData {
  final String description;
  final String imageurl;
  final String title;
  final IconData ic;

  PData({
    required this.description,
    required this.imageurl,
    required this.title,
    required this.ic,
  });
}

class Pview extends StatefulWidget {
  const Pview({Key? key}) : super(key: key);

  @override
  _PviewState createState() => _PviewState();
}

class _PviewState extends State<Pview> {
  int y = 0;
  final List<PData> MD = [
    PData(
      description: "this is the title 1",
      imageurl: "build/images/q.jpg",
      title: "title 1",
      ic: Icons.add,
    ),
    PData(
      description: "this is the title 2",
      imageurl: "build/images/q1.jpg",
      title: "title 2",
      ic: Icons.add,
    ),
    PData(
      description: "this is the title 3",
      imageurl: "build/images/q2.jpg",
      title: "title 3",
      ic: Icons.add,
    ),
    PData(
      description: "this is the title 4",
      imageurl: "build/images/q3.jpg",
      title: "title 4",
      ic: Icons.add,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '5': (ctx) => MYHomePage(),
        '6': (ctx) => Spalsh_Screen(),
      },
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            PageView(
              children: MD
                  .map(
                    (it) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(it.imageurl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(it.ic, size: 130),
                          SizedBox(height: 50),
                          Text(
                            it.title,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            it.description,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onPageChanged: (val) {
                setState(() {
                  y = val;
                });
              },
            ),
            Center(
              child: Cir(y),
            ),
            Builder(
              builder: (ctx) => Align(
                alignment: Alignment(0, 0.93),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: RaisedButton(
                      padding: EdgeInsets.all(7),
                      color: Colors.red,
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: () async {
                        SharedPreferences z =
                            await SharedPreferences.getInstance();
                        Navigator.of(ctx).pushNamed('6');
                        z.setBool('x', true);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cir extends StatelessWidget {
  final h;
  Cir(this.h);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          newMethod(h == 0 ? Colors.red : Colors.green),
          newMethod(h == 1 ? Colors.red : Colors.green),
          newMethod(h == 2 ? Colors.red : Colors.green),
          newMethod(h == 3 ? Colors.red : Colors.green),
        ],
      ),
    );
  }

  Container newMethod(Color col) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: col,
      ),
    );
  }
}
