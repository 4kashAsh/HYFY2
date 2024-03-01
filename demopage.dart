import 'package:flutter/material.dart';
import 'package:hyfy2/Screens/liked%20profiles.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  TextEditingController _searchcontoller = TextEditingController();
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Likedpro()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/bottom1img.png'),
              ),
              label: (''),
              // backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/bottom2img.png'),
              ),
              label: (''),
              // backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/bottom3img.png'),
              ),
              label: (''),
              // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/bottom4img.png'),
              ),
              label: (''),
              // backgroundColor: Colors.red,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
