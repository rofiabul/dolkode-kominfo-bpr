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
            leading: const Icon(Icons.menu),
            title: const Text('Flutter Demo Home Page'),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'A',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'B',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'C',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'D',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'E',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'F',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'G',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text(
                      'H',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ));
  }
}
