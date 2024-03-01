import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Notification.dart';

class Locationn extends StatefulWidget {
  const Locationn({super.key});

  @override
  State<Locationn> createState() => _LocationnState();
}

class _LocationnState extends State<Locationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/locationsmallimg.png',
                height: 65,
                width: 65,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  'Enable ',
                  style: GoogleFonts.rocknRollOne(
                      textStyle:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.w400)),
                )),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 40),
                child: AutoSizeText(
                  'location ',
                  style: GoogleFonts.rocknRollOne(
                      textStyle:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.w400)),
                ),
              )),
          Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/locationimg.png')),
          Text(
            'Enable location to know the',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          Text(
            'distance between you and your ',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          Text(
            'mate',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 200,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notificationn()));
                  },
                  icon: Icon(Icons.arrow_forward_ios_outlined)))
        ],
      ),
    );
  }
}
