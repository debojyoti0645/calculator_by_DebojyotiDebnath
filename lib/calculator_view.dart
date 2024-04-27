// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  //storage variables
  int a = 0;
  int b = 0;
  int c = 0;

  //textfield controllers
  final textFieldOneController = TextEditingController();
  final textFieldTwoController = TextEditingController();

  List iconList = [
    Icon(CupertinoIcons.add),
    Icon(CupertinoIcons.minus),
    Icon(CupertinoIcons.multiply),
    Icon(CupertinoIcons.divide),
  ];

  @override
  void initState() {
    super.initState();
    textFieldOneController.text = a.toString();
    textFieldTwoController.text = b.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade500,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Input Tiles
              TextFieldView(HintTextTitle: 'Enter 1st Number', controller: textFieldOneController),
              TextFieldView(HintTextTitle: 'Enter 2nd Number', controller: textFieldTwoController,),
              //Output Tiles
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 60,
                width: 400,
                child: Center(child: Text("0",
                style: TextStyle(fontSize: 28.0),)
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: (){
                        setState(() {
                          c = num.tryParse(textFieldOneController.text)! + num.tryParse(textFieldTwoController.text)!;
                        });
                      },
                      backgroundColor: Colors.transparent,
                      child: Icon(CupertinoIcons.add),
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Icon(CupertinoIcons.minus),
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Icon(CupertinoIcons.multiply),
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Icon(CupertinoIcons.divide),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
