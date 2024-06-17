// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie/screen/forget_password/first_page.dart';
import 'package:foodie/widget/registration_create_accoun_screen_widegt.dart';

class GreenLoginScreen extends StatefulWidget {
  const GreenLoginScreen({super.key});

  @override
  State<GreenLoginScreen> createState() => _GreenLoginScreenState();
}

class _GreenLoginScreenState extends State<GreenLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                RegistrationCreateAccountScreen(text: '      Email address',title: 'Eg: kodexafrica@gmail.com',),
                RegistrationCreateAccountScreen(text: 'Password',title: '*** *** ***',),
               Padding(
                padding: const EdgeInsets.only(top: 14),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff32B768),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 6 / 8, 45)),
                  onPressed: () {
                  },
                  child:Text('Login',style: TextStyle(color: Colors.white))
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(top: 14),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
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
                    Text('     Login with Google',style: TextStyle(color: Color(0xff222222)))
                  ],)
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(220,15,0,0),
                child: GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword() ,));
                },
                  child: Text('Forget Password?')),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}