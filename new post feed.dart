import 'package:flutter/material.dart';

class Newpostfeed extends StatefulWidget {
  const Newpostfeed({super.key});

  @override
  State<Newpostfeed> createState() => _NewpostfeedState();
}

class _NewpostfeedState extends State<Newpostfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Image.asset('assets/images/bottomnav1img.png'))
      ],),
    );
  }
}
