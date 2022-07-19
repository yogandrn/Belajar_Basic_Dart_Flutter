import 'package:flutter/material.dart';
import 'package:form_3/font_style.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form",
    home: MyForm(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState(); 
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> agama = [
    "Islam",
    "Kristen",
    "Protestan",
    "Hindu",
    "Budha",
    "Konghucu"
  ];

  String _agama = "Islam";
  String _jk = "";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerMoto = new TextEditingController();

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void _pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimData() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: [
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPass.text}"),
            new Text("Moto Hidup : ${controllerMoto.text}"),
            new Text("Jenis Kelamin : ${_jk}"),
            new Text("Agama : ${_agama}"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: () => Navigator.pop(context),
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  double nilaiSlider = 1;
  bool nilaiCheckbox = false;
  bool nilaiSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Data Diri", style: TextStyle(fontFamily: 'Inter-Medium')),
        backgroundColor: Colors.indigo,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(12.0),
            child: Column(children: [
              new TextField(
                style: inter,
                controller: controllerNama,
                decoration: new InputDecoration(
                    hintText: "Masukkan Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(16.0))),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextField(
                style: inter,
                controller: controllerPass,
                obscureText: true,
                decoration: new InputDecoration(
                    hintText: "Masukkan Password",
                    labelText: "Password",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0))),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextField(
                style: inter,
                controller: controllerMoto,
                maxLines: 3,
                decoration: new InputDecoration(
                    hintText: "Tuliskan Moto Hidup Anda",
                    labelText: "Moto Hidup",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0))),
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new RadioListTile(
                  value: "Laki-laki",
                  title: new Text("Laki-laki", style: title,),
                  groupValue: _jk,
                  onChanged: (String? value) {
                    _pilihJk(value!);
                  },
                  activeColor: Colors.indigo,
                  subtitle: new Text("Pilih ini jika anda Laki-laki", style: subtitle,)),
              new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan", style: title,),
                  groupValue: _jk,
                  onChanged: (String? value) {
                    _pilihJk(value!);
                  },
                  activeColor: Colors.indigo,
                  subtitle: new Text("Pilih ini jika anda Perempuan", style: subtitle)),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new Row(
                children: [
                  new Text(
                    "Agama", style: title
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  new DropdownButton(
                      items: agama.map((String value) {
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        _pilihAgama(value!);
                      }),
                ],
              ),
              new RaisedButton(
                child: new Text("OK", style: buttonText),
                color: Colors.indigo,
                onPressed: () {
                kirimData();
              })
            ]),
          ),
        ],
      ),
    );
  }
}
