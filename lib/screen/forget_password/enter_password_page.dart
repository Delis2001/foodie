// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:foodie/screen/forget_password/password_page.dart';

class EnterPasswordPage extends StatefulWidget {
  const EnterPasswordPage({super.key});

  @override
  State<EnterPasswordPage> createState() => _EnterPasswordPageState();
}

class _EnterPasswordPageState extends State<EnterPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0,100,120, 0),
              child: Text(
                'Change New Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8.0, 120, 0),
              child: Text('Enter your registered email below'),
            ),
         Padding(
            padding: const EdgeInsets.fromLTRB(0,60,225,0),
            child: Text('New Password',style: TextStyle(fontSize: 14),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30,5,30,0),
            width: MediaQuery.of(context).size.width*6/5,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: '   **** *** ***'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,5,200,0),
            child: Text('Confirm Password',style: TextStyle(fontSize: 14),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30,5,30,0),
            width: MediaQuery.of(context).size.width*6/5,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: '   **** *** ***'
              ),
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
                          builder: (context) => PasswordPage() ,
                        ),
                      );
                    },
                    child: Text(
                      'Submit',
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color.fromARGB(255, 248, 244, 244)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
