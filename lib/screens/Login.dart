import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('logo.png',scale: 1.0,width: 12.0,height: 12.0),
        title: const Text("Doctor Apointments", style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
        softWrap: true,
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(),
    );
  }
}