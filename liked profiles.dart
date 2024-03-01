import 'package:flutter/material.dart';

import 'new post feed.dart';

class Likedpro extends StatefulWidget {
  const Likedpro({super.key});

  @override
  State<Likedpro> createState() => _LikedproState();
}

class _LikedproState extends State<Likedpro> {
  TextEditingController _searchcontoller = TextEditingController();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Likedpro()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: TextFormField(
                      controller: _searchcontoller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          // borderSide: const BorderSide(color: Colors.black, width: 20),
                        ),
                        hintText: 'Search name',
                        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 150,
                    left: 80,
                    child: Image.asset(
                      'assets/images/pro1img.png',
                      height: 218,
                      width: 218,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 780,
                    left: 190,
                    child: Image.asset(
                      'assets/images/pro4img.png',
                      height: 167,
                      width: 242,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    left: 80,
                    top: 570,
                    child: Image.asset(
                      'assets/images/pro3img.png',
                      height: 224,
                      width: 228,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 320,
                    left: 170,
                    child: Image.asset(
                      'assets/images/pro2img.png',
                      height: 260,
                      width: 235,
                      fit: BoxFit.fill,
                    )),
              ],
            )),
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
