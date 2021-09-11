import 'package:ahmad_frehan/Screen1.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';

main() {
  runApp(MyAPP());
}

Color w = Colors.white;
Color b = Colors.black;
Color g = Colors.green;

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        '/y0': (context) => Screen1(),
        '/y1': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomePage> {
  Widget foo(
    String R,
    Color d,
  ) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        R,
        style: TextStyle(fontSize: 30, color: b),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red.withOpacity(0.8), b],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        color: d,
      ),
    );
  }

  void Sel(BuildContext ctx, int n) {
    Navigator.of(ctx).pushReplacementNamed(
      n == 1 ? '/y0' : '/y1',
      arguments: {
        'id': n == 1 ? 102 : 103,
        'Ahmad': n == 1 ? "Ahmadfr" : "Ahmad",
      },
    );
  }

  void _DAtR() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime.now());
  }

  bool ISWitch = false;
  int _3x=0;
  void _x(int index){
    setState(() {
      _3x=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 105,
          title: Text(
            "facebook",
            style: TextStyle(fontSize: 30),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home_sharp,size: 30,),
              ),
              Tab(
                icon: Icon(Icons.person_pin,size: 30,),
              ),
              Tab(
                icon: Icon(Icons.groups_sharp,size: 30,),
              ),
              Tab(
                icon: Icon(Icons.notifications_none_sharp,size: 30,),
              ),
              Tab(
                icon: Icon(Icons.menu_sharp,size: 30,),
              ),
            ],
          ),
          /*actions: <Widget>[
            Switch(
              value: ISWitch,
              onChanged: (value) {
                setState(() {
                  ISWitch = value;
                  if (ISWitch) {
                    b = Colors.white;
                    w = Colors.black;
                  } else if (!ISWitch) {
                    w = Colors.white;
                    b = Colors.black;
                  }
                });
              },
            ),
          ],
        */),
        body: Container(
          width: double.infinity,
          color: w,
          child: TabBarView(
            children: <Widget>[
              Scaffold(
                body: Center(
                  child: Text(
                    " 😎🙂 أحمد الفريحان",
                    style: TextStyle(fontSize: 30, color: b),
                  ),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text(
                    "TExT1",
                    style: TextStyle(fontSize: 30, color: b),
                  ),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text(
                    "TExT1",
                    style: TextStyle(fontSize: 30, color: b),
                  ),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text(
                    "TExT1",
                    style: TextStyle(fontSize: 30, color: b),
                  ),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text(
                    "TExT2",
                    style: TextStyle(fontSize: 30, color: b),
                  ),
                ),
              ),
            ],
          ),
        ),
        /*bottomNavigationBar: BottomNavigationBar(
          onTap: _x,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("Part1"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text("Part2"),
            ),
          ],
        ),
        drawerScrimColor: Colors.black.withOpacity(0.6),
        /* drawer: Drawer(
            child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Go to Screen 1",
                  style: TextStyle(
                    fontSize: 35,
                    color: b,
                  )),
              onTap: () {
                Sel(context, 1);
              },
            ),
            ListTile(
              title: Text(
                "Go to Screen 2",
                style: TextStyle(fontSize: 30, color: b),
              ),
              trailing: Icon(Icons.dark_mode),
              onTap: () {
                Sel(context, 2);
              },
            ),*/
            SizedBox(
              height: 500,
            ),
          ],
        )),
     */
      ),
    );
  }
}
