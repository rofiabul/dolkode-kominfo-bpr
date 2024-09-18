import 'package:flutter/material.dart';

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  String _counter = 'Halaman 1';
  void ChangePage(varI) {
    setState(() {
      _counter = varI;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text(
            _counter,
            style: TextStyle(fontSize: 42),
          )),
          ElevatedButton(
            onPressed: () {
              ChangePage('Halaman 2');
            },
            child: Text('Halaman 2'),
          ),
          ElevatedButton(
            onPressed: () {
              ChangePage('Halaman 3');
            },
            child: Text('Halaman 3'),
          ),
          ElevatedButton(
            onPressed: () {
              ChangePage('Halaman 4');
            },
            child: Text('Halaman 4'),
          ),
        ],
      ),
    );
  }
}
