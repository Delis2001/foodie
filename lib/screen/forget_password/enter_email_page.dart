// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodie/screen/forget_password/back_email_page.dart';

class EnterEmailPage extends StatefulWidget {
  const EnterEmailPage({super.key});

  @override
  State<EnterEmailPage> createState() => _EnterEmailPageState();
}

class _EnterEmailPageState extends State<EnterEmailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 155, 0),
              child: Text(
                'Forget Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 95),
              child: Text('Enter your registered email below'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 220, 0),
              child: Text(
                'Email address',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 7 / 8,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: '  Eg.kodexafrican@gmail.com'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: 'Remember the password? ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 156, 99),
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Container(
                width: MediaQuery.of(context).size.width * 3 / 5,
                height: 50,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BackEmailPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
