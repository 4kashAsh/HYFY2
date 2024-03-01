import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

import 'iam name.dart';

class otppage extends StatefulWidget {
  const otppage({super.key});

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1047.v,
        width: 500.h,

        // child: Container(
        //   height: 90,
        //   width: 150,
        child: Stack(
          children: [
            Positioned(
              top: 169,
              left: 185,
              child: Text(
                '00:42',
                style: GoogleFonts.poppins(
                    textStyle:
                    TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),
              ),
            ),
            Positioned(
              top: 228,
              left: 140,
              child: AutoSizeText(
                'Type the verification code ',
                style: GoogleFonts.salsa(
                    textStyle:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
              ),
            ),
            Positioned(
              top: 258,
              left: 160,
              child: AutoSizeText(
                'we have sent to you ',
                style: GoogleFonts.salsa(
                    textStyle:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, left: 70,top: 0),
              child: Align(
                alignment: Alignment.center,
                child: OtpTextField(
                  numberOfFields: 4,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Submit"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Iamname()));
                                  },
                                  child: Icon(Icons.arrow_forward))
                            ],
                          );
                        });
                  }, // end onSubmit
                ),
              ),
            ),
            Positioned(
                top: 600,
                right: 200,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(color: Colors.red),
                    )))
          ],
        ),
        // ),
      ),
    );
  }
}
