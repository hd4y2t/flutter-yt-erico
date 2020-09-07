import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("fleksibel widget"),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(
                                () {},
                              );
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 2),
                              margin: EdgeInsets.all(5),
                              color: Color.fromARGB(255, random.nextInt(256),
                                  random.nextInt(256), random.nextInt(256)),
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(
                                () {},
                              );
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 3),
                              margin: EdgeInsets.all(5),
                              color: Color.fromARGB(255, random.nextInt(256),
                                  random.nextInt(256), random.nextInt(256)),
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(
                                () {},
                              );
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 4),
                              margin: EdgeInsets.all(5),
                              color: Color.fromARGB(255, random.nextInt(256),
                                  random.nextInt(256), random.nextInt(256)),
                            ),
                          )),
                    ],
                  ),
                )),
            Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {},
                    );
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 5),
                    margin: EdgeInsets.all(5),
                    color: Color.fromARGB(255, random.nextInt(256),
                        random.nextInt(256), random.nextInt(256)),
                  ),
                )),
            Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {},
                    );
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 6),
                    margin: EdgeInsets.all(5),
                    color: Color.fromARGB(255, random.nextInt(256),
                        random.nextInt(256), random.nextInt(256)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
/*
10 .animation container dan gesture detector
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("animation container dan gesture detector"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
*/
/*
9. List & listview
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  /* 
 
 #contrakror
 _MyAppState() {
    for (int i = 1; i < 15; i++) {
      widgets.add(Text(
        "Data ke " + i.toString(),
        style: TextStyle(fontSize: 50),
      ));
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    child: Text("tambah data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "data ke " + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text("hapus data"),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter = counter -1;
                      });
                    })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
*/
/*
8. Materi TextStyle
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan Text Style"),
        ),
        body: Center(
          child: Text("ini adalah text",
          style: TextStyle(
            decoration: TextDecoration.overline,
            decorationColor: Colors.blue,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy
          ),),
        ),
      ),
    );
  }
}
*/
/*
  7.Materi Anonymous method

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah text";

  void tombolDitekan() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                  child: Text("tekan saya"),
                  onPressed: () {
                    setState(() {
                      message = "Tombol sudah ditekan";
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
*/
/* 
6. materi Statefull Widget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
   
    setState(() {
       number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(), style: TextStyle(fontSize: 0 + number.toDouble()),),
              RaisedButton(
                child: Text("Tambah bilangan"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/
