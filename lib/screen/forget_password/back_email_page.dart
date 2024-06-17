// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:foodie/screen/forget_password/enter_email_page.dart';
import 'package:foodie/screen/forget_password/enter_password_page.dart';

class BackEmailPage extends StatefulWidget {
  const BackEmailPage({super.key});

  @override
  State<BackEmailPage> createState() => _BackEmailPageState();
}

class _BackEmailPageState extends State<BackEmailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image(image: AssetImage('assets/images/success_icon.png')),
            ),
            Text(
              'Success',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
                'Please check your email for create \n              a new password'),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: RichText(
                text: TextSpan(
                    text: 'Cant get email? ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Resubmit',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                width: MediaQuery.of(context).size.width * 4 / 8,
                height: 45,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EnterPasswordPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Back Email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      )),
    );
  }
}
