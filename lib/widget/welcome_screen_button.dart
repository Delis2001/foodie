// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class WelcomeScreenButton extends StatefulWidget {
  String? text;
  Color? bordercolor;
  Color? textcolor;
   WelcomeScreenButton({super.key, this.text, this.bordercolor = Colors.green, this.textcolor = Colors.green});

  @override
  State<WelcomeScreenButton> createState() => _WelcomeScreenButtonState();
}

class _WelcomeScreenButtonState extends State<WelcomeScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width*4/7,
        height: 45,
        decoration: BoxDecoration(
            color: widget.bordercolor,
            borderRadius: BorderRadius.circular(10),
            ),
        child:Center(
          child: Text(widget.text.toString(),
            textAlign: TextAlign. center,
            style: TextStyle(
                color: widget.textcolor, fontWeight: FontWeight.bold),
                
          ),
        ),
      ),
    );
  }
}