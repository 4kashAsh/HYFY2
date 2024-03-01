import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

class Phnumber extends StatefulWidget {
  const Phnumber({super.key});

  @override
  State<Phnumber> createState() => _PhnumberState();
}

class _PhnumberState extends State<Phnumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(
        height: 1047.v,
        width: 500.h,
        child: Container(
          height: 200.v,
          width: 350.h,
          child: Stack(children: [
            Positioned(
                top: 190,
                left: 50,
                child: AutoSizeText('Your Phone Number',
                maxLines: 2,
                style: GoogleFonts.salsa(textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,)),
                )),
            Positioned(
                top: 300,
                left: 35,
                child: Image.asset('assets/images/phnumberimg.png')),

            Container(
              margin: const EdgeInsets.only(top: 70.0),
              padding: const EdgeInsets.only(left: 70, right: 70, bottom: 10),
              child: TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.white),
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(Icons.phone_iphone_sharp),
                ),
              ),
            ),

          ]),
        )));
  }
}
