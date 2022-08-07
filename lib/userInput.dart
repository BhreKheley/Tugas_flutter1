import 'package:flutter/material.dart';

class InputName extends StatefulWidget {
  const InputName({Key? key}) : super(key: key);

  @override
  State<InputName> createState() => _InputNameState();
}

class _InputNameState extends State<InputName> {
  TextEditingController ctrName = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama User'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: ctrName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Isi Nama'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ctrName.text);
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
