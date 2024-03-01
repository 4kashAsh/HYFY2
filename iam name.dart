import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

import 'Gender.dart';

class Iamname extends StatefulWidget {
  const Iamname({super.key});

  @override
  State<Iamname> createState() => _IamnameState();
}

class _IamnameState extends State<Iamname> {
TextEditingController _profilecontroller=TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 747.v,
            width: 500.h,
            // color: Colors.green,
            child: Stack(children: [
              Positioned(
                  top: 105,
                  left: 50,
                  child: Text('I am',
                      style: GoogleFonts.rocknRollOne(
                          textStyle: TextStyle(
                              fontSize: 48, fontWeight: FontWeight.w400)))),
              Positioned(
                  top: 250,
                  left: 70,
                  child: Image.asset(
                    'assets/images/iamimg.png',
                    width: 350.h,
                    height: 320.v,
                  )),

               Positioned(
                top: 720,
                left: 60,
                right: 60,
                child: Card(
                  elevation: 5,
                  child: TextField(
             // controller: _profilecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                      // errorText: _validate? 'enter ur name' : null,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 60,
                  child: Center(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,

                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(150, 40), //////// HERE
                    ),
                    onPressed: () {
                      // setState(() {
                      //   _text.text.isEmpty ? _validate = true : _validate = false;
                      // });
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Gender()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.black),
                    ),
                  )))
            ]),
          )
        ],
      ),
    );
  }
}
