import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text('Flutter Demo Home Page'),
              backgroundColor: Colors.blue,
            ),
            body: Stack(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(100),
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Image.asset('assets/image/logo-flutter.png'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-TVphB148wg1omRxgqXTMk9lDbLyunCmdw&s'),
                )
              ],
            )));
  }
}
