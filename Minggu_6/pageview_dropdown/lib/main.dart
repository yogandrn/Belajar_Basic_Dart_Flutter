import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> gambar = [
    'gif1.gif',
    'gif2.gif',
    'gif3.gif',
    'gif1.gif',
    'gif2.gif',
    'gif3.gif',
  ];

  static const Map<String, Color> colors = {
    'color1': Color(0xFF2DB569),
    'color2': Color.fromARGB(255, 221, 206, 0),
    'color3': Color.fromARGB(255, 127, 224, 169),
    'color4': Color.fromARGB(255, 45, 172, 181),
    'color5': Color.fromARGB(255, 243, 193, 28),
    'color6': Color.fromARGB(255, 250, 90, 255),
  };

  @override
  Widget build(BuildContext context) {
    timeDilation:
    5.0;
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
              Color.fromARGB(255, 128, 147, 255),Color.fromARGB(255, 80, 100, 212),Color.fromARGB(255, 87, 39, 176),
            ])),
        child: new PageView.builder(
            controller: new PageController(viewportFraction: 0.8),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int i) {
              return new Padding(
                padding:
                    new EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
                child: new Material(
                  elevation: 5.0,
                  child: new Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      new Hero(
                        tag: gambar[i],
                        child: new Material(
                          child: new InkWell(
                              child: new Flexible(
                                  flex: 1,
                                  child: Container(
                                    color: colors.values.elementAt(i),
                                    child: new Image.asset(
                                      "assets/images/${gambar[i]}",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              onTap: () => Navigator.of(context).push(
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new HalamanDua(
                                            gambar: gambar[i],
                                            colors: colors.values.elementAt(i),
                                          )))),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  HalamanDua({required this.gambar, required this.colors});

  final String gambar;
  final Color colors;

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  Color warna = Colors.grey;

  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text('Page View'),
          backgroundColor: Color.fromARGB(255, 59, 129, 185),
          actions: <Widget>[
            new PopupMenuButton<Pilihan>(
              onSelected: _pilihannya,
              itemBuilder: (BuildContext context) {
                return listPilihan.map((Pilihan x) {
                  return new PopupMenuItem<Pilihan>(
                    child: new Text(x.teks),
                    value: x,
                  );
                }).toList();
              },
            )
          ],
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  gradient: new RadialGradient(
                      center: Alignment.center,
                      colors: [Colors.purple, Colors.pink, Colors.indigo])),
            ),
            new Center(
              child: new Hero(
                tag: widget.gambar,
                child: new ClipOval(
                  child: new SizedBox(
                    width: 200,
                    height: 200,
                    child: new Material(
                      child: new InkWell(
                        onTap: () => Navigator.of(context).pop,
                        child: new Flexible(
                            flex: 1,
                            child: Container(
                                color: widget.colors,
                                child: Image.asset(
                                    "assets/images/${widget.gambar}",
                                    fit: BoxFit.cover))),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class Pilihan {
  const Pilihan({required this.teks, required this.warna});
  final String teks;
  final Color warna;
}

List<Pilihan> listPilihan = const <Pilihan>[
  const Pilihan(teks: "Red", warna: Colors.red),
  const Pilihan(teks: "Green", warna: Colors.green),
  const Pilihan(teks: "Blue", warna: Colors.blue),
];
