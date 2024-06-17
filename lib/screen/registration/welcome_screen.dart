// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/screen/registration/create_account_screen.dart';
import 'package:foodie/screen/registration/login_screen.dart';
import 'package:foodie/widget/welcome_screen_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/order_success.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Before enjoying Foodmedia services \n Please register first',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height/1.5,
                        width:  MediaQuery.of(context).size.width,
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              TabBar(
                                tabs: [Text('Create account'), Text('Login')],
                                labelColor: Colors.green,
                                indicatorColor: Colors.green,
                              ),
                              SizedBox(
                                width:  MediaQuery.of(context).size.width,
                                height:   1000,
                                child: TabBarView(children: [
                                  CreateAccountScreen(),
                                  LoginScreen()
                                ]),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: WelcomeScreenButton(
                  text: 'Create Account',
                  bordercolor: Colors.green,
                  textcolor: Colors.white,
                ),
              ),
            ),
            WelcomeScreenButton(
              text: 'Login',
              bordercolor: Color.fromARGB(255, 198, 248, 199),
              textcolor: Colors.green,
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            'By Logging In Or Registering,\n You Have Agreed To ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: 'The Terms And\n Condition ',
                              style: TextStyle(color: Colors.greenAccent)),
                          TextSpan(text: 'And'),
                          TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(color: Colors.greenAccent))
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
