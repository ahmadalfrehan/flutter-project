import 'package:ahmad_frehan/answer.dart';
import 'package:ahmad_frehan/quiz.dart';
import 'package:ahmad_frehan/result.dart';
import 'package:flutter/material.dart';
import 'quistion.dart';

main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

Color w = Colors.white;
Color b = Colors.black;
Color g = Colors.green;

class _MyAPPState extends State<MyAPP> {
  int _c = 0;
  bool ISWitch = false;
  void _Q() {
    setState(() {
      _c = 0;
      _tot = 0;
    });
  }

  void answerQuesion44(Score) {
    setState(() {
      _tot += Score;
      _c++;
    });
  }

  int _tot = 0;
  final List<Map<String, Object>> _Que = [
    {
      'Ques': 'What is your name ?',
      'ans': [
        {'text': 'أحمد الفريحان', 'score': 110},
        {'text': 'Rawan', 'score': 0},
        {'text': 'Ahmad Alfarhan', 'score': 40},
        {'text': 'ahmad', 'score': 1000},
      ],
    },
    {
      'Ques': 'What is your favorite color ?',
      'ans': [
        {'text': 'blue', 'score': 0},
        {'text': 'black', 'score': 0},
        {'text': 'whit', 'score': 0},
      ],
    },
    {
      'Ques': 'What is your favorite animal ?',
      'ans': [
        {'text': 'dog', 'score': 0},
        {'text': 'cat', 'score': 0},
        {'text': 'sheep', 'score': 0},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ahmad Alfrehan"),
          actions: <Widget>[
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
        ),
        body: Container(
            color: w,
            child: _c < _Que.length
                ? Quiz(_Que, _c, answerQuesion44)
                : Result(_Q, _tot)),
        floatingActionButton: FloatingActionButton(
          child: Text("back"),
          onPressed: () {
            setState(() {
              if (_c > 0) {
                _c--;
              }
            });
          },
        ),
      ),
    );
  }
}
//answer:
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _kkl;
  final Function MNB;
  const Answer(this._kkl,this.MNB);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.blue,
      child: Text(
        _kkl,
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
      onPressed: MNB,
    ));
  }
}
//quiz:
import 'package:flutter/material.dart';
import 'quistion.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> Quig;
  final int cp;
  final Function FDF;
  Quiz(this.Quig, this.cp, this.FDF);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Quistion(Quig[cp]['Ques']),
        ...(Quig[cp]['ans'] as List<Map<String,Object>>).map((e1) {
          return Answer(e1['text'],()=> FDF(e1['score']));
        }).toList(),
      ],
    );
  }
}
//question:
import 'package:flutter/material.dart';
import 'main.dart';

class Quistion extends StatelessWidget {
  final String _TEXTQUE;

  Quistion(this._TEXTQUE);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        _TEXTQUE,
        style: TextStyle(
          fontSize: 35,
          color: b
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
//Result:
import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function Q;
  final tot;
  Result(this.Q, this.tot);
  String get jhg {
    String name;
    if (tot >= 500)
      name = "$tot 🙂 Ahmad frehan";
    else if (tot < 500 && tot > 100)
      name = "$tot 😎 أحمد الفريحان";
    else if (tot < 100 && tot > 20)
      name = "$tot 😂 أحمد عيد";
    else if (tot == 0) name = "$tot Rawan ";
    return name;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            jhg,
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color:b),
          ),
          RaisedButton(
            child: Text("Restart the app",
                style: TextStyle(fontSize: 30, color: Colors.blueAccent)),
            onPressed: Q,
          )
        ],
      ),
    );
  }
}
