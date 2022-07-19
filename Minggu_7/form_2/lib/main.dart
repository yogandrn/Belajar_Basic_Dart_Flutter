import 'package:flutter/material.dart';

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

  double nilaiSlider = 1;
  bool nilaiCheckbox = false;
  bool nilaiSwitch = true;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71),
                        fontFamily: 'Inter-Medium'),
                    decoration: new InputDecoration(
                        hintText: "Enter your Email Address",
                        labelText: "Email Address",
                        icon: Icon(Icons.mail),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(4.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cannot be empty!";
                      } else if (!value.contains("@")) {
                        return "Invalid email address";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71),
                        fontFamily: 'Inter-Medium'),
                    decoration: new InputDecoration(
                        hintText: " 812xxxxxx",
                        labelText: "Phone Number",
                        prefix: Text("+62"),
                        icon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(4.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cannot be empty!";
                      } else if (value.length < 11) {
                        return "Invalid phone number";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 15.0,
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71),
                        fontFamily: 'Inter-Medium'),
                    decoration: new InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                        icon: Icon(Icons.key),
                        suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(4.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cannot be empty!";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 15.0,
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      "Belajar Flutter",
                      style: TextStyle(
                          color: Color.fromARGB(255, 63, 63, 63),
                          fontFamily: 'Inter-Medium'),
                    ),
                    subtitle: Text(
                      "Dart, Widget, Form",
                      style: TextStyle(
                          color: Color.fromARGB(255, 63, 63, 63),
                          fontFamily: 'Inter',
                          fontSize: 12),
                    ),
                    value: nilaiCheckbox,
                    activeColor: Colors.indigo,
                    onChanged: (value) {
                      setState(() {
                        nilaiCheckbox = value!;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: SwitchListTile(
                      title: Text(
                        "Belajar Back-End",
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 63, 63),
                            fontFamily: 'Inter-Medium'),
                      ),
                      subtitle: Text(
                        "Dart, PHP, JavaScript, Java",
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 63, 63),
                            fontFamily: 'Inter',
                            fontSize: 12),
                      ),
                      value: nilaiSwitch,
                      activeTrackColor: Colors.indigo.shade300,
                      activeColor: Colors.indigo,
                      onChanged: (value) {
                        setState(() {
                          nilaiSwitch = value;
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Slider(
                      value: nilaiSlider,
                      min: 0,
                      max: 100,
                      activeColor: Colors.indigo,
                      onChanged: (value) {
                        setState(() {
                          nilaiSlider = value;
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.0),
                  child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter-Semibold',
                            fontSize: 16),
                      ),
                      color: Colors.indigo,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      }),
                ),
              ],
            )),
      ),
    );
  }
}
