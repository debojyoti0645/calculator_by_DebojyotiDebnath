// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {

  final String HintTextTitle;
  final TextEditingController controller;
  
  TextFieldView({required this.HintTextTitle, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40.0, left: 20, right: 20),
      child: TextField(
        controller: controller,
          decoration: InputDecoration(
            hintText: HintTextTitle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0
              )
            )
          ),
      ),
    );
  }
}