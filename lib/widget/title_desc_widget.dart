// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TitleDescWidget extends StatefulWidget {
  String? title;
  String? description;
  
   TitleDescWidget({super.key, this.title, this.description, });

  @override
  State<TitleDescWidget> createState() => _TitleDescWidgetState();
}

class _TitleDescWidgetState extends State<TitleDescWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.title.toString(),
                  style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            Text(widget.description.toString(),
              textAlign: TextAlign.center
            ),
          ],
        );
  }
}