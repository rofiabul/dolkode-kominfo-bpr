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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Halaman Login'),
            backgroundColor: Colors.blue,
          ),
          body: Stack(
            children: [
              Image.network(
                  'https://img.freepik.com/free-vector/blur-pink-blue-abstract-gradient-background-vector_53876-174836.jpg'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(height: 150, 'assets/image/logo-flutter.png'),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'username',
                          hintText: 'masukan username',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          labelText: 'password',
                          hintText: 'masukan password',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: Text('register')),
                        SizedBox(width: 20),
                        ElevatedButton(onPressed: () {}, child: Text('login'))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
