import 'package:ahmad_frehan/Screen2.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FF = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    void Sel(BuildContext ctx, int n) {
      Navigator.of(ctx).pushReplacementNamed(
        n == 0 ? '/' : '/y1',
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
        ),
        body: Container(
          width: double.infinity,
          color: w,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                              Image.network(
                "https://blog.photofeeler.com/wp-content/uploads/2017/09/tinder-photo-size-tinder-picture-size-tinder-aspect-ratio-image-dimensions-crop.jpg",
                fit: BoxFit.fitHeight,
              ),
            Image.asset("build/flutter_assets/image/xx.jpg"),
              Image.asset("build/flutter_assets/image/hd.jpg"),
              Image.asset("build/flutter_assets/image/hf.jpg"),
              Image.asset("build/flutter_assets/image/jg.jpg"),
              Image.asset("build/flutter_assets/image/nb.jpg"),
              Image.asset("build/flutter_assets/image/ui.jpg"),
              Image.asset("build/flutter_assets/image/xy.jpg"),
              Image.asset("build/flutter_assets/image/xx.jpg"),
              Image.asset("build/flutter_assets/image/yt.jpg"),
  
                SizedBox(
                  height: 300,
                ),
                /*Text(
                  "${FF['id']}",
                  style: TextStyle(fontSize: 30, color: b),
                ),
                Text(
                  FF['Ahmad'],
                  style: TextStyle(fontSize: 30, color: b),
                ),*/
                InkWell(
                  child: Text("Go to main",
                      style: TextStyle(
                        fontSize: 35,
                        color: b,
                      )),
                  onTap: () {
                    Sel(context, 0);
                  },
                ),
                InkWell(
                  child: Text(
                    "Go to Screen 2",
                    style: TextStyle(fontSize: 35, color: b),
                  ),
                  onTap: () {
                    Sel(context, 2);
                  },
                ),
                SizedBox(
                  height: 300,
                ),
              ],
            ),
          ),
        ));
  }
}
