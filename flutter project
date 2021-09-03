  bool t = true;
  var s = Colors.lightBlueAccent;
  String str = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ahmad Alfrehan",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
        body: Container(
          color: s,
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "your name :",
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "your email :",
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.alternate_email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "your password :",
                  hintText: "Enter your password",
                  prefixIcon: IconButton(
                    icon: Icon(t ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        t = !t;
                      });
                    },
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: t,
              ),
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "your phone :",
                  hintText: "Enter your phone",
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Text(
              str,
              style: TextStyle(color: Colors.blueAccent, fontSize: 35),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 350,
            ),
          ])),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              str = "";
              s = Colors.lightBlueAccent;
            });
          },
          child: Icon(
            Icons.add_a_photo,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
