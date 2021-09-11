import 'package:flutter/material.dart';
import 'main.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FFd =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    void Sel(BuildContext ctx, int n) {
      Navigator.of(ctx).pushReplacementNamed(
        n == 1 ? 'y0/' : '/',
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Container(
        width: double.infinity,
        color: w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
              ),
              /*Text(
                "${FFd['id']}",
                style: TextStyle(fontSize: 30, color: b),
              ),
              Text(
                FFd['Ahmad'],
                style: TextStyle(fontSize: 30, color: b),
              ),*/
              InkWell(
                child: Text("Go to Screen 1",
                    style: TextStyle(
                      fontSize: 35,
                      color: b,
                    )),
                onTap: () {
                  Sel(context, 1);
                },
              ),
              InkWell(
                child: Text(
                  "Go to main",
                  style: TextStyle(fontSize: 35, color: b),
                ),
                onTap: () {
                  Sel(context, 0);
                },
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
