import 'package:flutter/material.dart';
import 'package:myapp/menu1.dart';
import 'package:myapp/menu2.dart';
import 'package:myapp/menu3.dart';
import 'package:myapp/menu4.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Utama ss'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Menu1();
                  }));
                },
                child: Text('Menu 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Menu2();
                  }));
                },
                child: Text('Menu 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Menu3();
                  }));
                },
                child: Text('Menu 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Menu4();
                  }));
                },
                child: Text('Menu 4'),
              )
            ],
          ),
        ));
  }
}
