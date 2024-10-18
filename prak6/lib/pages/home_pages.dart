import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double lebar = 300.0;
  double tinggi = 200.0;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    lebar = MediaQuery.of(context).size.width;
    tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: lebar,
          height: tinggi,
          color: Colors.amberAccent,
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                width: selected ? 300.0 : 100.0,
                height: selected ? 300.0 : 100.0,
                color: selected ? Colors.red : Colors.blue,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
