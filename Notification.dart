import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'new post feed.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 190,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Enable ',
                  style: GoogleFonts.rocknRollOne(
                      textStyle:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.w400)),
                ),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40,top: 10),
                child: Text(
                  ' notification',
                  style: GoogleFonts.rocknRollOne(
                      textStyle:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.w400)),
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/Notificationimg.png'),
          SizedBox(
            height: 90,
          ),
          Text(
            'Get push-notification',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          Text(
            'when you get the match',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          Text(
            'or receive a message',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 180,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Newpostfeed()));
                  },
                  icon: Icon(Icons.arrow_forward_ios_outlined)))
        ],
      ),
    );
  }
}
