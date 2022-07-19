import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Minggu 4 acara 3'),
              backgroundColor: Colors.blueGrey,
            ),
            body: Column(
              children: [
                ikon(),
                text(),
                texts(),
                button(),
                form(),
                gambar()
              ],
            )

            // Widget Text
            // body: Column(
            // children: <Widget>[
            //   Text("Nasi + Mie Rebus"),
            //   Text("Nasi + Mie Rebus + Telor"),
            //   Text("Nasi + Ayam"),
            //   Text("Nasi + Ayam + Es Jeruk"),
            //   Text("Nasi + Ikan + Es Teh"),
            //   Text("Nasi + Sate Ayam")
            // ],
            // ),
            // end of Widget Text

            // Text
            //  body: Text('Ini Text', style: TextStyle(
            //         color: Color.fromARGB(255, 27, 45, 80),
            //         backgroundColor: Color.fromARGB(255, 146, 174, 236),
            //         fontSize: 20.0,
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold
            //         ),)
            // end of Text

            // TextForm
            // body: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Form(
            //     child: Column(
            //     children: <Widget>[
            //       TextFormField(
            //       decoration: InputDecoration(hintText: "Username"),
            //       ),
            //       TextFormField(
            //       obscureText: true,
            //       decoration: InputDecoration(hintText: "Password"),
            //       ),
            //       RaisedButton(
            //       child: Text("Login"),
            //       onPressed: () {},
            //       )
            //     ],
            //   ),
            // ),
            // )
            // end of TextForm

            //  Widget Icon
            // body: Padding(
            //   padding: EdgeInsets.all(16.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: <Widget>[
            //           Column(
            //           children: <Widget>[
            //           Icon(Icons.access_alarm),
            //           Text('Alarm')],
            //           ),
            //           Column(
            //           children: <Widget>[
            //           Icon(Icons.phone),
            //           Text('Phone')
            //           ],
            //           ),
            //           Column(
            //           children: <Widget>[
            //           Icon(Icons.book),
            //           Text('Book')
            //           ],
            //           ),
            //       ],
            //   ),
            // )
            //  end of Widget Icon

            // body: Column(
            // children: <Widget>[
            //   RaisedButton(
            //     color: Color.fromARGB(255, 224, 175, 26),
            //     child: Text("Raised Button"),
            //     onPressed: () {},
            //     ),
            //     MaterialButton(
            //     color: Colors.lime,
            //     child: Text("Material Button"),
            //     onPressed: () {},
            //     ),
            //     FlatButton(
            //     color: Colors.lightGreenAccent,
            //     child: Text("FlatButton Button"),
            //     onPressed: () {},
            //     ),
            // ]
            // )

            ));
  }
}

Widget texts() {
  return Column(
    children: <Widget>[
      Text("Nasi + Mie Rebus"),
      Text("Nasi + Mie Rebus + Telor"),
      Text("Nasi + Ayam"),
      Text("Nasi + Ayam + Es Jeruk"),
      Text("Nasi + Ikan + Es Teh"),
      Text("Nasi + Sate Ayam")
    ],
  );
}

Widget text() {
  return const Center(
      child: Text(
    'Ini Text',
    style: TextStyle(
        color: Color.fromARGB(255, 27, 45, 80),
        backgroundColor: Color.fromARGB(255, 146, 174, 236),
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold),
  ));
}

Widget button() {
  return Column(children: <Widget>[
    RaisedButton(
      color: Color.fromARGB(255, 224, 175, 26),
      child: Text("Raised Button"),
      onPressed: () {},
    ),
    MaterialButton(
      color: Colors.lime,
      child: Text("Material Button"),
      onPressed: () {},
    ),
    FlatButton(
      color: Colors.lightGreenAccent,
      child: Text("FlatButton Button"),
      onPressed: () {},
    ),
  ]);
}

Widget ikon() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
        ),
        Column(
          children: <Widget>[Icon(Icons.phone), Text('Phone')],
        ),
        Column(
          children: <Widget>[Icon(Icons.book), Text('Book')],
        ),
      ],
    ),
  );
}

Widget form() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(hintText: "Password"),
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}

Widget gambar() {
  return Image.asset('assets/images/user.png');
}
