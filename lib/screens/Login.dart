

import 'package:flutter/material.dart';
import 'package:hospital/screens/Home.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Doctor Apointment"),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
            ),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Welcome to Doctor Apointment"),
              Image.asset("assets/images/logo.png",scale: 0.5,),
              Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter valid mail id as abc@gmail.com'
                                            ),
                                          ),
                      ),
                      const Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'
                      ),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => const Home()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (_) => const Register()));
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(color: Colors.white, fontSize: 25),
                              ),
                            ),
                      ),
                      ),
                      ],
                  )
              )
            ],
          ),
        )
    );
  }
}