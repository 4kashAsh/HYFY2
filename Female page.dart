import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hyfy2/Screens/Calender.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

class Femalepage extends StatefulWidget {
  const Femalepage({super.key});

  @override
  State<Femalepage> createState() => _FemalepageState();
}

class _FemalepageState extends State<Femalepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900.v,
        width: 490.h,
        child: Column(
          children: [
            Container(
              height: 350.v,
              child: Stack(
                children: [
                  Positioned(
                    top: 150,
                    left: 40,
                    child: SizedBox(
                      width: 279.h,
                      height: 188.v,
                      child: AutoSizeText(
                        'Who would you like to date',
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.w400),
                        maxLines: 3,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shadowColor: Colors.greenAccent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(200, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Calenderr()));
                  },
                  child: Text('Male',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            Container(
              // height: 100,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shadowColor: Colors.greenAccent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(200, 40), //////// HERE
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Calenderr()));
                    },
                    child: Text('Female',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400)),
                  )),
            ),
            Stack(
              children: [
                Positioned(child: Image.asset('assets/images/datefemaleimg.png'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
