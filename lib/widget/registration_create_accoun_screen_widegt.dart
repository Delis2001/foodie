// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class RegistrationCreateAccountScreen extends StatefulWidget {
  String? text;
  String? title;
  
  RegistrationCreateAccountScreen({super.key, this.text, this.title});

  @override
  State<RegistrationCreateAccountScreen> createState() =>
      _RegistrationCreateAccountScreenState();
}

class _RegistrationCreateAccountScreenState
    extends State<RegistrationCreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,250,0),
          child: Text(widget.text.toString(),
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 7 / 8,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                  hintText: widget.title),
            ),
          ),
        ),
      ],
    );
  }
}
