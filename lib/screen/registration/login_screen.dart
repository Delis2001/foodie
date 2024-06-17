// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:foodie/screen/registration/green_login_screen.dart';
import 'package:foodie/screen/registration/green_registration_screen.dart';
import 'package:foodie/widget/registration_create_accoun_screen_widegt.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    backgroundColor: Color(0xffF4F4F4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 6 / 8, 45)),
                  onPressed: () {
                   showModalBottomSheet(
                      showDragHandle: true,
                      context: context, builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width:  MediaQuery.of(context).size.width,
                          child: DefaultTabController(length: 1, child: Column(
                            children: [
                              TabBar(
                                labelColor: Colors.green,
                                indicatorColor: Colors.green,
                                tabs: [
                                Text('Login'),
                              ],),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                width:  MediaQuery.of(context).size.width,
                                child: TabBarView(children: [
                                  GreenLoginScreen()
                                 
                                ]))
                            ],
                          )),
                        ),
                      );
                    });
                  },
                  child:Text('Login',style: TextStyle(color: Color(0xff9CA3AF)))
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
                    Text('     Login with Google',style: TextStyle(color: Color(0xff222222)))
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