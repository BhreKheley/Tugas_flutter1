import 'package:flutter_application_1/phoneInput.dart';
import 'package:flutter_application_1/kalkulator.dart';
import 'package:flutter/material.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();

  Widget txtInput(String username, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: username),
    );
  }

  Widget btnRegister(String text) {
    return Container(
      width: 150,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => kalkulator(
                          name: ctrNama.text,
                        )));
          },
          child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Container(
        child: Column(
          children: [
            txtInput("username", ctrUsername),
            SizedBox(
              height: 10,
            ),
            txtInput("nama", ctrNama),
            SizedBox(
              height: 10,
            ),
            btnRegister("Submit"),
            Row(
              children: [
                Text("Your Phone Number:" + phonenumber.text),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InputPhone()),
                      );

                      setState(() {
                        phonenumber.text = result.toString();
                      });
                    },
                    child: Text("Input Phone"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
