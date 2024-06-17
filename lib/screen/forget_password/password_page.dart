// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:foodie/screen/forget_password/success_page.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 120, 0),
              child: Text(
                'Change New Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 7.0, 100, 0),
              child: Text('Enter a different password with the previous'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 225, 0),
              child: Text(
                'New Password',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              width: MediaQuery.of(context).size.width * 6 / 5,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: '   **** *** ***'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 200, 0),
              child: Text(
                'Confirm Password',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              width: MediaQuery.of(context).size.width * 6 / 5,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: '   **** *** ***'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 280),
              child: Container(
                width: MediaQuery.of(context).size.width * 3 / 5,
                height: 50,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SuccessPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Reset-Password Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
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
