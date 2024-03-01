import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

import 'otp.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController gmailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1100.v,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 119, left: 15),
              child: Center(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Continue with",
                    style: GoogleFonts.salsa(
                        textStyle: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                ),
              ),
            ),
            //   Image ivde aahn ittin
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 73, top: 130, right: 80),
                child: Image.asset(
                  'assets/images/loginimg.png',
                  height: 219.v,
                  width: 257.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 70.v,
            ),
            //   login with phone number ivde
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 75, top: 10),
              child: Card(
                elevation: 8,
                child: TextFormField(

                    controller: phonecontroller,
                     // maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0, color: Colors.white),
                      ),
                      labelText: 'phone number',
                      labelStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(Icons.phone_iphone_sharp),
                    ),
                    onFieldSubmitted: (value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => otppage()));
                    }),
              ),
            ),
            SizedBox(
              height: 40.v,
            ),

            Text(
              'Or',
              style: GoogleFonts.sanchez(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 75, top: 10),
              child: Card(
                elevation: 8,
                child: TextFormField(
                    controller: gmailcontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0, color: Colors.white),
                      ),
                      labelText: 'Gmail',
                      labelStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(Icons.g_mobiledata_sharp),
                    ),
                    onFieldSubmitted: (value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => otppage()));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
