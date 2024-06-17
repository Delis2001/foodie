// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:foodie/screen/registration/green_login_screen.dart';
import 'package:foodie/screen/registration/green_registration_screen.dart';
import 'package:foodie/widget/registration_create_accoun_screen_widegt.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                RegistrationCreateAccountScreen(
                  text: 'Full Name',
                  title: 'Enter your full name',
                ),
                RegistrationCreateAccountScreen(
                  text: '     Email address',
                  title: 'Eg: kodexafrican@gmail.com',
                ),
                RegistrationCreateAccountScreen(
                  text: 'Paasword',
                  title: '*** *** ***',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40 ),
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
                            width:  MediaQuery.of(context).size.width,
                            child: DefaultTabController(length: 1, child: Column(
                              children: [
                                TabBar(
                                  labelColor: Colors.green,
                                  indicatorColor: Colors.green,
                                  tabs: [
                                  Text('Create Account'),
                                ],),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                  width:  MediaQuery.of(context).size.width,
                                  child: TabBarView(children: [
                                    RegistrationScreen(),
                                   
                                  ]))
                              ],
                            )),
                          ),
                        );
                      });
                    },
                    child: Text('Registration',style: TextStyle(color: Color(0xff9CA3AF))),
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
                      Text('     Sign up with Google', style: TextStyle(color: Color(0xff222222)))
                    ],)
                  ),
                )
              ],
            ),
          ),
        )),
      
    );
  }
}
