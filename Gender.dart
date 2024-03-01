import 'package:flutter/material.dart';
import 'package:hyfy2/Screens/Screen%20size.dart';

import 'malepage.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: 1000.v,
      width: 500.h,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, right: 30),
            child: Container(
              // height: 200,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/genderimg.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 90,
            ),
            child: Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {

                    });
                  }, icon: Image.asset('assets/images/gendermaleimg.png')),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                      ),
                      child:  IconButton(onPressed: (){}, icon: Image.asset('assets/images/genderfemaleimg.png'))
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 300,
            ),
            child: ElevatedButton(
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
                      MaterialPageRoute(builder: (context) => Malepage()));
                 },
                child: Text(
                  'next',
                )),
          )
        ],
      ),
    ),);
  }
}
