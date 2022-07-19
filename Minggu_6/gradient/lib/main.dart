import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(children: <Widget>[
          Flexible(
            flex: 1,
              child: Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.teal, Colors.blue.shade600]
                    )),
        )),
        Flexible(
          flex: 1,
          child: Container(
            decoration: new BoxDecoration(
              gradient: SweepGradient(colors: [Colors.green.shade700, Colors.greenAccent])
            ),
        )),
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 1.0,
                colors: [
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 249, 132, 37)
              ])
            ),
          ),
        )
    ]));
  }
}
