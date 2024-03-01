import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

import 'Intersetpage.dart';

class Calenderr extends StatefulWidget {
  const Calenderr({super.key});

  @override
  State<Calenderr> createState() => _CalenderrState();
}

class _CalenderrState extends State<Calenderr> {
  @override
  List<DateTime?> _singledate = [
    DateTime.now(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900.v,
        child: Column(children: [
          Container(
            height: 100.v,
          ),
          Container(
            height: 100.v,
            width: 500.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                "birth day",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 500.v,
              child: SafeArea(
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single),
                  value: _singledate,
                  onValueChanged: (dates) => _singledate = dates,
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Intersett()));
              },
              child: Text("next"))
        ]),
      ),
    );
  }
}
