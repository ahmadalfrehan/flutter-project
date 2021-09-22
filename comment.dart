import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MYHomePage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeeksforGeeks',

      // to hide debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MYHomePage(),
    );
  }
}

class MYHomePage extends StatefulWidget {
  @override
  _MYHomePageState createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => FutureDemoPage(),
              ),
            ),
            child: Text('Demonstrate FutureBuilder'),
          ),
        ),
      ),
    );
  }
}

class FutureDemoPage extends StatelessWidget {
  /// Function that will return a
  /// "string" after some time
  /// To demonstrate network call
  /// delay of [2 seconds] is used
  ///
  /// This function will behave as an
  /// asynchronous function
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am data";
      // throw Exception("Custom Error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future Demo Page'),
        ),
        body: FutureBuilder(
          builder: (ctx, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                final data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: getData(),
        ),
      ),
    );
  }
}


  inm() {
    
  int info(b) {
    return b;
  }

  String st = "أحمد الفريحان";
  int c = 0;
  List imaglist = [
    'build/images/s1.jpg',
    'build/images/s2.jpg',
    'build/images/s3.jpg',
  ];
  int aud = 0;
  var e = ThemeMode.light;
  var ee = ThemeMode.system;

  bool gf = false;
  bool ggf = false;
}

    toolbarHeight:
    null;
    actions:
    [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ];
    flexibleSpace:
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.red,
            Colors.deepPurpleAccent,
          ],
        ),
      ),
    );
    centerTitle:
    true;
  }

  Drawer DarkMode() {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              !gf ? Text("dark") : Text("light"),
              Switch(
                onChanged: (bool value) {
                  gf = value;
                  if (gf)
                    e = ThemeMode.dark;
                  else if (!gf) e = ThemeMode.light;
                },
                value: gf,
              ),
              Text("Like the system?"),
              Switch(
                onChanged: (bool value1) {
                  ggf = value1;
                  if (ggf)
                    ee = ThemeMode.system;
                  else if (!ggf) ee = ThemeMode.light;
                },
                value: ggf,
              ),
            ],
          ),
        ],
      ),
    );
  }

  RadioListTile<int> RadioLL(val, txt, subtxt) {
    return RadioListTile(
      value: val,
      groupValue: aud,
      onChanged: (value) {
        setState(() {
          aud = value!;
        });
      },
      title: Text(txt),
      subtitle: Text(subtxt),
    );
  }

  Container Slider(val) {
    return Container(
      child: ListView(
        children: [
          SizedBox(height: 30),
          Text(
            "slider 1 , inisiall image page index 0 \n\n",
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            items: imaglist.map((e) {
              return Container(
                child: Image.asset(e, fit: BoxFit.fill),
              );
            }).toList(),
            options: CarouselOptions(
              height: 200,
              onPageChanged: (int index, _) {
                setState(() {
                  c = index;
                });
              },
              aspectRatio: 16 / 9,
              initialPage: 2,
              viewportFraction: 0.8,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cercil(0),
              cercil(1),
              cercil(2),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "slider 1 , inisiall image page index 0 \n\n",
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: imaglist.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                child: Image.asset(imaglist[index], fit: BoxFit.fill),
              );
            },
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              onPageChanged: (int index, _) {
                setState(() {
                  c = index;
                });
              },
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cercil(0),
              cercil(1),
              cercil(2),
            ],
          ),
        ],
      ),
    );
  }

  Container cercil(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: c == index ? Colors.red : Colors.green,
      ),
    );
  }

  RaisedButton Snakbarr(BuildContext context) {
    return RaisedButton(
      child: Text("SnackBar Text"),
      onPressed: () {
        setState(() {
          st = "";
        });
        final Sn = SnackBar(
          action: SnackBarAction(
            label: "While (true)",
            onPressed: () {
              setState(() {
                st = "أحمد الفريحان";
              });
            },
            textColor: Colors.black,
          ),
          content: Text("Ahmad Ali ALfrehan"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(Sn);
      },
    );
  }

  RaisedButton newMethod(BuildContext context) {
    return RaisedButton(
      child: Text("touch Me!"),
      onPressed: () {
        final AlertDialog f = AlertDialog(
          title: Text("While (true){}"),
          content: Container(
            height: 150,
            child: Column(
              children: [
                Divider(
                  color: Colors.red,
                ),
                Text("You are very smart!"),
                SizedBox(height: 7),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.redAccent,
                    icon: Icon(Icons.ac_unit),
                    label: Text("also touch me again!"),
                  ),
                ),
              ],
            ),
          ),
        );
        showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return f;
          },
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.7),
        );
      },
    );
  }

  void _incrementCounter() {
    showToast(
      "Welcome Back!",
      duration: Duration(seconds: 2),
      position: ToastPosition.bottom,
      backgroundColor: Colors.black.withOpacity(0.8),
      radius: 13.0,
      textStyle: TextStyle(fontSize: 18.0),
    );

    showToast(
      "Welcome Back!",
      duration: Duration(seconds: 2),
      position: ToastPosition.top,
      backgroundColor: Colors.black.withOpacity(0.8),
      radius: 3.0,
      textStyle: TextStyle(fontSize: 30.0),
    );

    // 3.2 use showToastWidget method to custom widget
    Widget widget = Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: 40.0,
          height: 40.0,
          color: Colors.grey.withOpacity(0.3),
          child: Icon(
            Icons.add,
            size: 30.0,
            color: Colors.green,
          ),
        ),
      ),
    );
    setState(() {});
    Text("Welcome Back!",
        style: TextStyle(
            fontSize: 30,
            fontFamily: "RobotoCondensed",
            color: Colors.blueAccent));
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: _incrementCounter,
        child: Text('toast'),
      ),
    );
  }
}
