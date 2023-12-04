import 'package:flutter/material.dart';

// ignore: camel_case_types
class Form_Screen extends StatefulWidget {
  const Form_Screen({super.key});

  @override
  State<Form_Screen> createState() => _Form_ScreenState();
}

// ignore: camel_case_types
class _Form_ScreenState extends State<Form_Screen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: (const Text(
          'Form Training',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextFormField(
                  maxLength: 30,
                  decoration: const InputDecoration(
                    hintText: 'Your name',
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Name can not be empty';
                    }
                    return null;
                  },
                  onSaved: (text) {
                    _name = text!;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      print(_name);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
