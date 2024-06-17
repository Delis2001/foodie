// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie/screen/registration/green_login_screen.dart';
import 'package:foodie/widget/registration_create_accoun_screen_widegt.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                RegistrationCreateAccountScreen(text: 'Full Name',title: 'Sadek Hossen Rony',),
                RegistrationCreateAccountScreen(text: '    Email address',title: 'kodexafrica@gmail.com',),
                RegistrationCreateAccountScreen(text: 'Passowrd',title: '*** *** ***',),
               Padding(
                padding: const EdgeInsets.only(top: 14),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: Color(0xff32B768),
                    backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 6 / 8, 45)),
                  onPressed: () {
                    showModalBottomSheet(
                      showDragHandle: true,
                      context: context, builder: (context) => GreenLoginScreen(),);
                  },
                  child: Text('Registration',style: TextStyle(color: Color(0xffFFFFFF)),),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 14),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF4F4F4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 6 / 8, 45)),
                  onPressed: () {},
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffF4F4F4),
                      child: Image(image: AssetImage('assets/images/icon.jpg'),),),
                    Text('     Sign up with Google',style: TextStyle(color: Color(0xff222222)))
                  ],)
                ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}