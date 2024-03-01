import 'package:flutter/material.dart';

class Interestt extends StatefulWidget {
  const Interestt({super.key});

  @override
  State<Interestt> createState() => _InteresttState();
}

class _InteresttState extends State<Interestt> {
  int _counter = 0;
  List<Optionss> myoptions2 = [];

  List<Optionss> myoptions = [
    Optionss(name: "pets", status: false),
    Optionss(name: "Gardening", status: false),
    Optionss(name: "videography", status: false),
    Optionss(name: "coding", status: false),
    Optionss(name: "yoga", status: false),
    Optionss(name: "traveling", status: false),
    Optionss(name: "photograhy", status: false),
    Optionss(name: "cooking", status: false),
    Optionss(name: "reading", status: false),
    Optionss(name: "shopping", status: false),
    Optionss(name: "music", status: false),
    Optionss(name: "karaoke", status: false),
    Optionss(name: "drink", status: false),
    Optionss(name: "sports", status: false),
    Optionss(name: "video games", status: false),
    Optionss(name: "art", status: false),



  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      myoptions2.addAll(myoptions);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 130,
          mainAxisSpacing: 10,
        ),
        itemCount: myoptions2.length,
        itemBuilder: (BuildContext context, int index) {

          return Padding(
            padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
            child: FloatingActionButton(onPressed: (){

                setState(() {
                myoptions[index].status = !myoptions[index].status;
                });
                }, child: Container( height: 50,
              color: myoptions[index].status ? Colors.red: Colors.white70,
              child: Center(child: Text('${myoptions[index].name}',)),
            ),),
          );
          // return InkWell(
          //     onTap: () {
          //       setState(() {
          //         myoptions[index].status = !myoptions[index].status;
          //       });
          //     },
          //     child: Padding(
          //       padding: const EdgeInsets.all(50),
          //       child: Container(
          //         height: 10,
          //         color: myoptions[index].status ? Colors.red : Colors.white70,
          //         child: Center(child: Text('${myoptions[index].name}')),
          //       ),
          //     ));
        },
      ),
    );
  }
}

class Optionss {
  late String name;
  late bool status;

  Optionss({required this.name, required this.status});
}
