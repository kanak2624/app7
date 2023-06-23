import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  RegisterUser() {
    print(fname.text);
    print(lname.text);
    print(email.text);
    print(pass.text);
    print(cpass.text);
    /*   print(lname);
    print(email);
    print(pass);
    print(cpass); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: TextField(
            controller: fname,
            decoration: InputDecoration(hintText: "Enter F Name"),
            keyboardType: TextInputType.name,
            /*  onChanged: (value) {
              fname:
              value;
            }, */
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter L Name"),
            keyboardType: TextInputType.name,
            controller: lname,
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter email"),
            keyboardType: TextInputType.name,
            controller: email,
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter pass"),
            keyboardType: TextInputType.name,
            controller: pass,
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter c pass"),
            keyboardType: TextInputType.name,
            controller: cpass,
          ),
        ),
        Container(
            child: TextButton(
          child: Text("Register"),
          onPressed: RegisterUser,
        )),
      ]),
    );
  }
}
